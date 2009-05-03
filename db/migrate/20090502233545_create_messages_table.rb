class CreateMessagesTable < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.string :body
      t.timestamps
    end
  end

  def self.down
    drop_table :message
  end
end