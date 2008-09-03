class CreateStreets < ActiveRecord::Migration
  def self.up
      create_table "streets", :force => true do |t|
        t.column "name",             :string
        t.column "description",      :text
        t.column "created_at",       :datetime
        t.column "url_name",         :string
        t.column "city_id",          :integer
        t.column "neighborhood_url", :string
      end
  end

  def self.down
    drop_table :streets
  end
end
