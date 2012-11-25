class AddContactsToUser < ActiveRecord::Migration
  def change
    add_column :users, :play_name , :string
    add_column :users, :contacts , :string
  end
end
