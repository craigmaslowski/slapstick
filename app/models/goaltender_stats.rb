class GoaltenderStats < ActiveRecord::Base
  belongs_to :player
  attr_accessible :games_played, :wins, :losses, :goals_against, :shots_against, :saves, :goals_against_average, :save_percentage, :shutouts
end
