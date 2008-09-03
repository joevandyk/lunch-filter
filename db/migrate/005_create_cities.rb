class CreateCities < ActiveRecord::Migration
  def self.up
      create_table "cities", :force => true do |t|
        t.column "created_at", :datetime
        t.column "name", :string
      end
  end

  def self.down
    drop_table :cities
  end
end
