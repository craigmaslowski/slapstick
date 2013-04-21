class SkaterStats < ActiveRecord::Base
  attr_accessible :assists, :goals, :hits, :number_of_games, :penalty_minutes, :plus_minus, :shots_on_goal
end
