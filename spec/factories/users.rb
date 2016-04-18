FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password { "password"}
    password_confirmation { "password"}
    weight { 200 }
    goal_weight { 180 }
    max_calories { 1600 }
    goal_weekly_score { 2 }
    sex { "male" }
  end
end
