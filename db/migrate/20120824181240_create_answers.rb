class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :ans
      t.integer :ques
      t.integer :user_id

      t.timestamps
    end
  end
end
