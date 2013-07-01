class Player < ActiveRecord::Base
  belongs_to :team_member,
             :polymorphic => true,
             :dependent => :destroy

  belongs_to :team

  # TODO:  Should these attributes stay at the "player" level?
  attr_accessible :games_played, :image_url, :name, :number, :position_id
end
