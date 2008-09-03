class ModeratorController < ApplicationController
  before_filter :login_required
  def index
    @streets = Street.find(:all, :order => "name")
    @cuisines = Cuisine.find(:all,:order =>"name")
    @cities = City.find(:all, :order => "name")
    #@blocks = Block.find(:all, :conditions=>["street_id = ?", @street.id], :order=>"sort")
  end
  
	def create_street
	    @cities = City.find(:all)
	    
	    if request.post?
		    street = Street.new(params[:street])
    		if street.save
    		  redirect_to :controller=>params["controller"] 
    			flash[:successful] = "Thank you for your participation!  Your street has been added!"
    		else
    		  redirect_to :controller=>params["controller"] 
    			flash[:notice] = "Hmm..something went wrong.  Please try again."
    		end
	    end
	end
	
    def edit_street
        @street = Street.find(params[:id])
        @cities = City.find(:all)
        @city_id = @street.city.id
        if request.post?
      		if @street.update_attributes(params[:street])
      			flash[:successful] = "The street #{@street.name} has been updated!"
      		    redirect_to :controller=>"moderator"
      		else
      		  redirect_to :controller=>"moderator"
      			flash[:notice] = "Hmm..something went wrong.  Please try again."
    		  end
        end
    end
	
	def destroy_street
		street = Street.find(params[:id])
		street.destroy
		if street.destroy
			redirect_to :controller=>params['controller']
			flash[:successful] = "The street '#{street.name}' was successfully deleted!"
		else
			flash[:notice] = "Hmm..something went wrong.  Please try again."
		end
	end
	
	def create_cuisine
		cuisine = Cuisine.new(
			:name => params[:cuisine][:name])
		if cuisine.save
		  redirect_to :controller=>params["controller"] 
			flash[:successful] = "Your cuisine has been added!"
		else
		  redirect_to :controller=>params["controller"] 
			flash[:notice] = "Hmm..something went wrong.  Please try again."
		end
	end
	
	def edit_cuisine
		@cuisine = Cuisine.find(params[:id])
		if request.post?
		  @cuisine.name = params[:cuisine][:name]
		  if @cuisine.save
  		  redirect_to :controller=>params["controller"] 
  			flash[:successful] = "#{@cuisine.name} has been updated!"
  		else
  		  redirect_to :controller=>params["controller"] 
  			flash[:notice] = "Hmm..something went wrong.  Please try again."
  		end
	  end
	end
	
	def destroy_cuisine
		cuisine = Cuisine.find(params[:id])
		cuisine.destroy
		if cuisine.destroy
			redirect_to :controller=>params['controller']
			flash[:successful] = "The cuisine '#{cuisine.name}' was successfully deleted!"
		else
			flash[:notice] = "Hmm..something went wrong.  Please try again."
		end
	end
	
end
