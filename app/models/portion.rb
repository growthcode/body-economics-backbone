class Portion < ActiveRecord::Base
  belongs_to :meal, inverse_of: :portions
  belongs_to :food, inverse_of: :portions

  # validates :meal_id, :food_id, presences: true
end
