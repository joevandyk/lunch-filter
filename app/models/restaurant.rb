class Restaurant < ActiveRecord::Base
  belongs_to :street
  has_and_belongs_to_many :cuisines, :order=>"name"
  belongs_to :block
  belongs_to :user
  has_many :recommendations
  has_many :flags
  
  def user_recommended?(current_user_id)
    users = []
    for recommendation in recommendations
        users.push(recommendation.user_id)
    end  
    users.include?(current_user_id)
  end
  
  #get list of all users that gave a recommendation for a given restaurant
  def recommendation_users
      users = []
      for recommendation in recommendations
          users.push(recommendation.user)
      end  
      return users
  end
  
end
