class Skater < ActiveRecord::Base
  acts_as_team_member

  attr_accessible :goals, :assists, :plus_minus, :hits, :shots_on_goal, :penalty_minutes

  default_scope :include => :player
end
