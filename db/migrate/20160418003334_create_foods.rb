class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string  :name,          null: false
      t.integer :kcal
      t.string  :serving_size
      t.string  :serving_type
      t.text    :note
      t.integer :meals_ate,     null: false, default: 0
      t.integer :servings_ate,  null: false, default: 0
      t.boolean :quickadd,      null: false, default: false
      t.boolean :favorite,      null: false, default: false
      t.boolean :hidden,        null: false, default: false

      t.belongs_to :creator
      t.timestamps null: false
    end

    add_index :foods, :name
    add_index :foods, :creator_id
  end
end
