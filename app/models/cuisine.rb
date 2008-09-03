class Cuisine < ActiveRecord::Base
  has_and_belongs_to_many :restaurants
  has_and_belongs_to_many :flags
  #has_many :cuisines_restaurants, :dependent => :destroy
  #test these delete dependencies
end
