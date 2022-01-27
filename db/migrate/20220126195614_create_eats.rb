class CreateEats < ActiveRecord::Migration[6.1]
  def change
      create_table :eats do |t|
      t.integer :meal_id
      t.integer :food_id
      t.timestamps
    end
  end
end
