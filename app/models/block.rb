class Block < ActiveRecord::Base
  belongs_to :street
  has_many :restaurants, :dependent => :destroy
end
