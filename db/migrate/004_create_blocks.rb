class CreateBlocks < ActiveRecord::Migration
  def self.up
      create_table "blocks", :force => true do |t|
        t.column "street_id", :integer
        t.column "name", :string
        t.column "sort", :integer
      end
  end

  def self.down
    drop_table :blocks
  end
end
