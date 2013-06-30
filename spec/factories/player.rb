FactoryGirl.define do
  factory :player do |f|
    f.name { "#{ Faker::Name.first_name } #{ Faker::Name.last_name }" }
    f.position_id 1
    f.games_played 50
    f.number 51
    f.image_url "http://foo.com/bar.png"
    f.team_member_id 1
    f.team_member_type "player"
  end
end