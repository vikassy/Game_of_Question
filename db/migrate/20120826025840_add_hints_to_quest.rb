class AddHintsToQuest < ActiveRecord::Migration
  def change
    add_column :quests, :hint, :text
  end
end
