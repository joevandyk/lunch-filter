class Street < ActiveRecord::Base
  has_many :restaurants
  has_many :blocks
  belongs_to :city
end
