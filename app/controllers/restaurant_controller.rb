class RestaurantController < ApplicationController
    #before_filter :login_required
    caches_page :list
    
    def index
        @vote = cookies[:vote]        
        @cities = City.find(:all, :order => "name")
        votes = Vote.find(:all, :order=>"candidate")
        
        @wa_votes = Vote.count_votes("Wallingford")
      	@ba_votes = Vote.count_votes("Ballard Ave")
        @br_votes = Vote.count_votes("Broadway")
      	@fr_votes = Vote.count_votes("Fremont Ave")
      	@la_votes = Vote.count_votes("Lake City Way")
    	  @qu_votes = Vote.count_votes("Queen Anne N")
    end

    def streets
        @city = City.find_by_name(params[:city])
        @streets = Street.find(:all, :conditions=>["city_id=?", @city.id])
    end

    def list
        @cuisines = Cuisine.find(:all, :order=>"name") 
        @streets = Street.find(:all)
        @restaurants = []
        @filter_cuisines = []

        #check if there is a filter - if there is only get restaurants that match the given cuisine(s)
        if params[:cuisine_ids]
            @filter_cuisines = Cuisine.find(params[:cuisine_ids], :include=> :restaurants)
            for cuisine in @filter_cuisines
                @restaurants += cuisine.restaurants
            end
        else #no filter
            @restaurants = Street.find_by_url_name(params[:id]).restaurants
        end

        @street = Street.find_by_url_name(params[:id])
        @blocks = Block.find(:all, :conditions=>["street_id = ?", @street.id], :order=>"sort")

    end

    def update_filter #ajax filter on check on checkbox filter
        #return all parcel IDs that match the selected cuisines - highlight divs with javascript
        @restaurants = []
        if params[:cuisine_ids]
            @street = Street.find(params[:street])
            @filter_cuisines = Cuisine.find(params[:cuisine_ids], :include=> :restaurants)
            for cuisine in @filter_cuisines
                @restaurants += cuisine.restaurants
            end
        end
    end

    def find_random_restaurant #via AJAX
        @street = Street.find(params[:street]) #why can't I pass the street object
        if params[:cuisine_ids]
            @restaurants = []
            @filter_cuisines = Cuisine.find(params[:cuisine_ids], :include=> :restaurants)
            for cuisine in @filter_cuisines
                @restaurants += cuisine.restaurants
            end
        else
            @restaurants = Street.find(@street.id).restaurants #maybe pass this as a param?
        end
        restaurant = rand(@restaurants.length)
        @random_restaurant = @restaurants[restaurant]
    end

    def create_restaurant
        login_required
        @cuisines = Cuisine.find(:all, :order=>"name")
        @street = Street.find(params[:id])
        @blocks = Block.find(:all, :conditions=>["street_id = ?", @street.id])
        if request.post?
            restaurant = @street.restaurants.create(params[:restaurant])
            restaurant.cuisines = Cuisine.find(params[:cuisine_ids]) if params[:cuisine_ids]
            if restaurant.save
                expire_page(:action => 'list')
                redirect_to :controller=>"restaurant", :action=>"list", :id=>@street.url_name
                flash[:successful] = "The restaurant #{restaurant.name} has been added!"
            else
                redirect_to :controller=>"restaurant", :action=>"list" 
                flash[:notice] = "Hmm..something went wrong.  Please try again."
            end
        end
    end

    def edit_restaurant
        login_required
        @restaurant = Restaurant.find(params[:id])
        @street = @restaurant.street
        @blocks = Block.find(:all, :conditions=>["street_id = ?", @street.id])
        @cuisines = Cuisine.find(:all, :order=>"name")
        if request.post?
            @restaurant.cuisines = Cuisine.find(params[:cuisine_ids]) if params[:cuisine_ids]
            if @restaurant.update_attributes(params[:restaurant])
                expire_page(:action => 'list')
                flash[:successful] = "The restaurant #{@restaurant.name} has been updated!"
                redirect_to :controller=>"restaurant", :action=>"list", :id=>@street.url_name, :anchor=>"anchor#{@restaurant.id}"
            else
                redirect_to :controller=>"restaurant", :action=>"edit_restaurant" 
                flash[:notice] = "Hmm..something went wrong.  Please try again."
            end
        end
    end

    def destroy_restaurant
        login_required
        #figure out many to many relationship
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        if restaurant.destroy
            expire_page(:action => 'list')
            redirect_to :controller=>"restaurant", :action=>"list", :id=>restaurant.street.url_name
            flash[:successful] = "The restaurant '#{restaurant.name}' was successfully deleted!"
        else
            flash[:notice] = "Hmm..something went wrong.  Please try again."
        end
    end
    
    def flag
       @restaurant = Restaurant.find(params[:id])
       @street = @restaurant.street
       @cuisines = Cuisine.find(:all, :order=>"name")
       if request.post?
           flag = @restaurant.flags.create(params[:restaurant])
           flag.cuisines = Cuisine.find(params[:cuisine_ids]) if params[:cuisine_ids]
           if flag.save
               expire_page(:action => 'list')
               flash[:successful] = "The restaurant #{@restaurant.name} has been flagged for changes! The LunchFilter team has been notified!  Thanks!"
               redirect_to :controller=>"restaurant", :action=>"list", :id=>@street.url_name
               Notifier.deliver_flag(@restaurant.name)
           else
              redirect_to :action=>"flag" 
              flash[:notice] = flag.errors.full_messages
           end
       end
    end
    
    def flagged
       login_required
       @flags = Flag.find(:all)
    end
    
    def destroy_flag
        login_required
        flag = Flag.find(params[:id])
        flag.destroy
        if flag.destroy
            expire_page(:action => 'list')
            redirect_to :action=>"flagged"
            flash[:successful] = "The suggestion was successfully deleted!"
        else
            redirect_to :action=>"flagged"
            flash[:notice] = "Hmm..something went wrong.  Please try again."
        end
    end
    
    def accept_flag
        login_required
        f = Flag.find(params[:id])
        r = f.restaurant
        if r.update_attributes({:name=>f.name, :yelp_url=>f.yelp_url, :husky_card=>f.husky_card, :coupon_url=>f.coupon_url, :delivery=>f.delivery, :cuisines=>f.cuisines})
            f.destroy
            redirect_to :action=>"flagged"
            flash[:successful] = "The restaurant #{r.name} has been updated and the flag was removed!"
        else
            redirect_to :action=>"flagged"
            flash[:notice] = "Hmm..something went wrong.  Please try again."
        end
    end

    def recommendation
        login_required
        restaurant = Restaurant.find(params[:id])
        if restaurant.user_recommended?(current_user.id)
            recommendation = Recommendation.find(:first, :conditions=>["restaurant_id = ? AND user_id = ?", restaurant.id, current_user.id])
            recommendation.destroy
        else
            recommendation = restaurant.recommendations.create(
                :user_id => current_user.id,
                :recommended => params[:recommendation])
        end
        if recommendation.errors.blank?
            redirect_to :controller=>"restaurant", :action=>"list", :id=>restaurant.street.url_name
            flash[:successful] = "Your recommendation for the restaurant '#{restaurant.name}' was successfully saved!"
        else
            flash[:notice] = "Hmm..something went wrong.  Please try again."
        end
    end
    
    def street_vote        
        expire_fragment(:controller=>'restaurant', :action => 'index')
        if request.post?
            if params[:vote]         
                unless cookies[:vote] 
                    vote = Vote.new(
                        :ipaddr => @request.env['REMOTE_ADDR'],
                        :candidate => params[:vote][:street],
                        :study => 1
                    )
                    if vote.save
                        cookies[:vote] = { :value => params[:vote][:street], :expires => 30.days.from_now }
                        #flash[:successful] = "1 more point for #{params[:vote][:street]}. Thanks for your vote!"
                        redirect_to :controller=>"restaurant", :anchor=>"vote"
                    end
                else
                    flash[:notice] = "Sorry you already voted for #{cookies[:vote]}."
                    redirect_to :controller=>"restaurant" 
                end
            else
                flash[:notice] = "Please select a street before you vote."
                redirect_to :controller=>"restaurant"
            end
        end
    end

    def clear_street_vote
        if request.post?
            if cookies[:vote]
                cookies.delete :vote
                flash[:successful] = "Vote Cleared"
                redirect_to :controller=>"restaurant"
            else
                flash[:notice] = "No vote cookie found."
                redirect_to :controller=>"restaurant"
            end
        end
    end
end
