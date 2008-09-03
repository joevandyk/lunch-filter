class Flag < ActiveRecord::Base
    belongs_to :restaurant
    has_and_belongs_to_many :cuisines, :order=>"name"
    
    #validates_format_of :yelp_url, :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix
    #validates_format_of :coupon_url, :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix
    
    def recommendation_users
       restaurant.recommendation_users 
    end
end
