class Team < ActiveRecord::Base
  attr_accessible :name

  has_many :players

  validates :name,
            :presence => true,
            :length => { :maximum => 50 }
end
