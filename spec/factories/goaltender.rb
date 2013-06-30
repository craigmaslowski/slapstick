FactoryGirl.define do
  factory :goaltender do |f|
    f.name { "#{ Faker::Name.first_name } #{ Faker::Name.last_name }" }
    f.games_played 13
    f.number 42
    f.image_url "http://goaltenders.com/goalie.png"
    f.wins 1
    f.losses 2
    f.goals_against 3
    f.shots_against 4
    f.saves 5
    f.save_percentage 20.0
    f.goals_against_average 0.5
    f.shutouts 0
  end
end