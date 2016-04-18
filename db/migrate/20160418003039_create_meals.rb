class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer  :kcal
      t.integer  :oz_drank
      t.datetime :mealtime
      t.text     :note
      t.integer  :hunger_start
      t.integer  :thirst_start
      t.integer  :hunger_end
      t.integer  :thirst_end

      t.belongs_to :day
      t.timestamps null: false
    end

    add_index :meals, :day_id
  end
end
