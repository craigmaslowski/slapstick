class TeamPlayer < ActiveRecord::Base
  belongs_to :team
  belongs_to :player_properties
  # attr_accessible :title, :body
end
