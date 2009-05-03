class AddCreatedByToMessages < ActiveRecord::Migration
  def self.up
    add_column :messages, :created_by, :string
  end

  def self.down
    remove_column :messages, :created_by
  end
end
