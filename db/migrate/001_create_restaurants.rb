class CreateRestaurants < ActiveRecord::Migration
  def self.up
      create_table "restaurants", :force => true do |t|
        t.column "street_id", :integer
        t.column "created_at", :datetime
        t.column "name", :string
        t.column "yelp_url", :string
        t.column "husky_card", :integer, :limit => 1
        t.column "coupon_url", :string
        t.column "side", :string, :limit => 12
        t.column "delivery", :integer, :limit => 1
        t.column "block_id", :integer
        t.column "top", :integer
      end

  end

  def self.down
    drop_table :restaurants
  end
end
