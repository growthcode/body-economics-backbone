user = User.find_by(email: 'user@gmail.com')
if user.blank?
  user = FactoryGirl.create(:user, email: 'user@gmail.com')
end

counter_28 = 28
weight = 200
score_array = [1,1,1,1,0,-1,-1,1,1,1,1,0,1,-2]
exercise_array = ["cardio", "weight training"]
points_array = [0]

28.times do
  exer_today = exercise_array.sample
  points_today = score_array.sample
  points_array << points_today
  pts_to_date = points_array.inject(:+)
  kcal_today = [1, 0].include?(points_today) ? rand(1600..1400) : rand(1610..3000)
  if points_today == 0 || points_today == -2
    exer_today = "not exercise"
  end

  day = Day.new(
    score: points_today,
    exercise: exer_today,
    weight: weight - (pts_to_date/2),
    date_on: Date.today - counter_28,
    kcal: kcal_today,
    oz_drank: rand(10..25),
    note: "I did #{exer_today} and got #{points_today} point for the day.",
    user_id: user.id,
  )

  day.save
  puts ap(day.attributes)
  puts "Days left to create:".colorize(:light_yellow) + " #{counter_28 -= 1}".colorize(:light_blue)
  puts '========================'
end
