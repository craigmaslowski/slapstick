require 'spec_helper'

describe Skater do
  it "has a valid factory" do
    FactoryGirl.create(:skater).should be_valid
  end

  describe "player attributes" do
    before(:each) do
      @skater = FactoryGirl.create(:skater)
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
      @skater = FactoryGirl.create(:skater)
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
  end
end