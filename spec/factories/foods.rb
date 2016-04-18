FactoryGirl.define do
  factory :food do
    name { 'Chicken Breast' }
    kcal { 110 }
    serving_size { '4' }
    serving_type { 'oz' }
  end
end
