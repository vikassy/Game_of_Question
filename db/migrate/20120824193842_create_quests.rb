class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.text :questions
      t.text :answer

      t.timestamps
    end
  end
end
