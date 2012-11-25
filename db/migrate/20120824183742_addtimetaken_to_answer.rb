class AddtimetakenToAnswer < ActiveRecord::Migration
  def up
  	remove_column :answers, :ques
  end

  def down
  	add_column :answers, :quest_id, :integer
  end
end
