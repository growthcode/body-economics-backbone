FactoryGirl.define do
  factory :meal do
    kcal { rand(1400..1600) }
    oz_drank { rand(4..12) }
    hunger_start { rand(5..7) }
    hunger_end { hunger_start - 3 }
    thirst_start { rand(4..7) }
    thirst_end { thirst_start - 2 }
    mealtime { Time.current }
  end
end
