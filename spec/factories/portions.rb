FactoryGirl.define do
  factory :portion do
    kcal { 280 }
    servings_count { 2 }
    meal_id { Meal.last.id }
    food_id { Food.first.id }
  end
end
