class AddTimerToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :timer, :time
  end
end
