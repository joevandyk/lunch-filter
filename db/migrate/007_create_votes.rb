class CreateVotes < ActiveRecord::Migration
  def self.up
      create_table "votes", :force => true do |t|
        t.column "ipaddr",    :string
        t.column "candidate", :string
        t.column "study",     :integer
        t.column "created_at",:datetime
      end
  end

  def self.down
    drop_table :votes
  end
end
