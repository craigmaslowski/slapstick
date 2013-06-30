FactoryGirl.define do
  factory :skater do |f|
    f.name { "#{ Faker::Name.first_name } #{ Faker::Name.last_name }" }
    f.games_played 13
    f.number 42
    f.image_url "http://my-team.com/my-image.png"
    f.goals 1
    f.assists 1
    f.plus_minus 10
    f.hits 50
    f.shots_on_goal 30
    f.penalty_minutes 100
  end
end