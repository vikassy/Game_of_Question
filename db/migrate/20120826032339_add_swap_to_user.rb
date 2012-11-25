class AddSwapToUser < ActiveRecord::Migration
  def change
    add_column :users, :swap, :integer
    add_column :users, :hack, :integer
  end
end
