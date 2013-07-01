class Goaltender < ActiveRecord::Base
  acts_as_team_member

  attr_accessible :wins, :losses, :goals_against, :shots_against, :saves, :goals_against_average, :save_percentage, :shutouts

  default_scope :include => :player
end
