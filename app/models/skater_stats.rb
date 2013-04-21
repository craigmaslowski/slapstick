class SkaterStats < ActiveRecord::Base
  #belongs_to :player
  attr_accessible :assists, :goals, :hits, :games_played, :penalty_minutes, :plus_minus, :shots_on_goal
end
