class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :foods_list
      t.integer :calorie_count
      t.timestamps
    end
  end
end
