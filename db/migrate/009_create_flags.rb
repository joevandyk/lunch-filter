class CreateFlags < ActiveRecord::Migration
  def self.up
    create_table "flags", :force => true do |t|
      t.column "restaurant_id", :integer
      t.column "created_at", :datetime
      t.column "name", :string
      t.column "yelp_url", :string
      t.column "husky_card", :integer, :limit => 1
      t.column "coupon_url", :string
      t.column "delivery", :integer, :limit => 1
      t.column "note", :string
    end
  end

  def self.down
    drop_table :flags
  end
end
