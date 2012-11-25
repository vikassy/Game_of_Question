class AddThintsToUser < ActiveRecord::Migration
  def change
    add_column :users, :thint, :integer
  end
end
