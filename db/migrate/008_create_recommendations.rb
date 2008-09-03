class CreateRecommendations < ActiveRecord::Migration
  def self.up
    create_table :recommendations do |t|
        t.column :created_at,                :datetime
        t.column :updated_at,                :datetime
        t.column :user_id,                   :integer
        t.column :restaurant_id,             :integer
        t.column :recommended,               :boolean
    end
  end

  def self.down
    drop_table :recommendations
  end
end
