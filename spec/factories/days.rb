FactoryGirl.define do
  factory :day do
    two_week_points_array = [1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, -1, -1, -2]
    exercise_array = ["cardio", "weight training"]

    score { two_week_points_array.sample }
    exercise { [1, -1].include?(score) ? exercise_array.sample : nil }
    date_on { Date.today }
    kcal { [1, 0].include?(score) ? rand(1400..1600) : rand(1400..1600) }
    oz_drank { rand(10..25) }
    note { "I did #{exercise ? exercise : "not exercise today"} and got a #{score} score for the day." }
  end
end
