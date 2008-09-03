class CreateCuisines < ActiveRecord::Migration
  def self.up
      create_table "cuisines", :force => true do |t|
        t.column "name", :string
      end
      
      create_table :cuisines_flags, :id => false do |t|
        t.column :flag_id,     :integer
        t.column :cuisine_id,   :integer
      end
      
      create_table :cuisines_restaurants, :id => false do |t|
        t.column :restaurant_id,     :integer
        t.column :cuisine_id,   :integer
      end
  end

  def self.down
    drop_table :cuisines
    drop_table :cuisines_flags
    drop_table :cuisines_restaurants
  end
end
