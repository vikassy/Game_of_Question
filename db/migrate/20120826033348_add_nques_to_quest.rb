class AddNquesToQuest < ActiveRecord::Migration
  def change
    add_column :quests, :nques, :text
  end
end
