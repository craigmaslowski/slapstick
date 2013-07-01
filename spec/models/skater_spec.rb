require 'spec_helper'

describe Skater do
  it "has a valid factory" do
    FactoryGirl.create(:skater).should be_valid
  end

  describe "player attributes" do
    before(:each) do
      @skater = FactoryGirl.build(:skater)
    end

    it "should respond to :name" do
      @skater.should respond_to(:name)
    end

    it "should respond to :position" do
      @skater.should respond_to(:position)
    end

    it "should respond to :games_played" do
      @skater.should respond_to(:games_played)
    end

    it "should respond to :number" do
      @skater.should respond_to(:number)
    end

    it "should respond to :image_url" do
      @skater.should respond_to(:image_url)
    end

    it "should respond to :team_member_type" do
      @skater.should respond_to(:team_member_type)
    end
  end

  describe "skater attributes" do
    before(:each) do
      @skater = FactoryGirl.build(:skater)
    end

    it "should respond to :goals" do
      @skater.should respond_to(:goals)
    end

    it "should respond to :assists" do
      @skater.should respond_to(:assists)
    end

    it "should respond to :plus_minus" do
      @skater.should respond_to(:plus_minus)
    end

    it "should respond to :hits" do
      @skater.should respond_to(:hits)
    end

    it "should respond to :shots_on_goal" do
      @skater.should respond_to(:shots_on_goal)
    end

    it "should respond to :penalty_minutes" do
      @skater.should respond_to(:penalty_minutes)
    end

    it "should respond to :player" do
      @skater.should respond_to(:player)
    end
  end

  describe "instance methods" do
    it "should save to the skaters and players table" do
      @skater = FactoryGirl.create(:skater)

      Skater.find_by_id(@skater.id).should_not be_nil
      Player.find_by_team_member_id(@skater.id).should_not be_nil
    end

    it "should save to the players table with team_member_type 'Skater'" do
      @skater = FactoryGirl.create(:skater)

      Player.find_by_team_member_id(@skater.id).team_member_type.should == "Skater"
    end

    it "should also retrieve the Skater's associated Player record when fetched from the database" do
      @skater = FactoryGirl.create(:skater)

      s = Skater.find_by_id(@skater.id)
      s.player.should_not be_nil
      s.player.id.should_not == 0
      s.player.team_member_id.should == s.id
    end
  end
end