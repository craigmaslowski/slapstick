class Skater < ActiveRecord::Base
  acts_as_team_member

  attr_accessible :assists, :goals, :hits, :penalty_minutes, :plus_minus, :shots_on_goal

  # TODO:  Should these attributes be at the "player" level?
  attr_accessible :games_played, :image_url, :name, :number, :position_id
end
