class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.text :comment

      t.timestamps
    end
  end
end
