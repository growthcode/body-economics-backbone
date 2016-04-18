class CreatePortions < ActiveRecord::Migration
  def change
    create_table :portions do |t|
      t.integer :kcal
      t.integer :servings_count

      t.belongs_to :meal
      t.belongs_to :food
      t.timestamps
    end

    add_index :portions, :meal_id
    add_index :portions, :food_id
  end
end
