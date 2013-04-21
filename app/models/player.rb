class Player < ActiveRecord::Base
  belongs_to :position
  attr_accessible :assists, :goals, :hits, :image_url, :name, :number, :number_of_games, :penalty_minutes, :plus_minus, :shots_on_goal

  #has_one :skater_stats
  #has_one :goaltender_stats

end
