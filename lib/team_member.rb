# http://techspry.com/ruby_and_rails/multiple-table-inheritance-in-rails-3/
module TeamMember
  def acts_as_team_member
    include InstanceMethods

    belongs_to :position
    has_one :player,
            :as => :team_member,
            :autosave => true,
            :dependent => :destroy

    # Autobuild the association between the Skater/Goaltender and Player
    alias_method_chain :player, :build

    # Get access to all the the Player columns
    player_attributes = Player.content_columns.map(&:name)

    # Define attribute_accessor method
    def team_member_attr_accessor(*attribute_array)
      attribute_array.each do |att|
        define_method(att) do
          player.send(att)
        end

        define_method("#{att}=") do |val|
          player.send("#{att}=", val)
        end
      end
    end

    # Delegate the attributes
    team_member_attr_accessor *player_attributes
  end

  module InstanceMethods
    def player_with_build
      player_without_build || build_player
    end
  end
end