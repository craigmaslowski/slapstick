class Player < ActiveRecord::Base
  belongs_to :team_member,
             :polymorphic => true,
             :dependent => :destroy
end
