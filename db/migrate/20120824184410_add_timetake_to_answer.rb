class AddTimetakeToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :timetake, :integer
    add_column :answers, :quest_id, :integer
  end
end
