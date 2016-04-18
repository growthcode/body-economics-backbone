class CreateDay < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :score, null: false, default: 0
      t.string  :exercise
      t.integer :weight
      t.date    :date_on
      t.integer :kcal
      t.integer :oz_drank
      t.text    :note

      # add exercise table (like food table) later

      # future fields (possibly):
      # t.integer :challenge_lvl
      # t.integer :preparedness_lvl

      t.belongs_to :user
      t.timestamps null: false
    end

    add_index :days, :user_id
  end
end
