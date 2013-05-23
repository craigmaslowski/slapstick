class Goaltender < ActiveRecord::Base
  acts_as_team_member

  attr_accessible :wins, :losses, :goals_against, :shots_against, :saves, :goals_against_average, :save_percentage, :shutouts

  # TODO:  Should these attributes be at the "player" level?
  attr_accessible :games_played, :image_url, :name, :number, :position_id
end
