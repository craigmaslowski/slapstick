require 'spec_helper'

describe Goaltender do
  it "has a valid factory" do
    FactoryGirl.create(:goaltender).should be_valid
  end

  describe "player attributes" do
    before(:each) do
      @goaltender = FactoryGirl.create(:goaltender)
    end

    it "should respond to :name" do
      @goaltender.should respond_to(:name)
    end

    it "should respond to :position" do
      @goaltender.should respond_to(:position)
    end

    it "should respond to :games_played" do
      @goaltender.should respond_to(:games_played)
    end

    it "should respond to :number" do
      @goaltender.should respond_to(:number)
    end

    it "should respond to :image_url" do
      @goaltender.should respond_to(:image_url)
    end

    it "should respond to :team_member_type" do
      @goaltender.should respond_to(:team_member_type)
    end
  end

  describe "goaltender attributes" do
    before(:each) do
      @goaltender = FactoryGirl.create(:goaltender)
    end

    it "should respond to :wins" do
      @goaltender.should respond_to(:wins)
    end

    it "should respond to :losses" do
      @goaltender.should respond_to(:losses)
    end

    it "should respond to :goals_against" do
      @goaltender.should respond_to(:goals_against)
    end

    it "should respond to :shots_against" do
      @goaltender.should respond_to(:shots_against)
    end

    it "should respond to :saves" do
      @goaltender.should respond_to(:saves)
    end

    it "should respond to :save_percentage" do
      @goaltender.should respond_to(:save_percentage)
    end

    it "should respond to :goals_against_average" do
      @goaltender.should respond_to(:goals_against_average)
    end

    it "should respond to :shutouts" do
      @goaltender.should respond_to(:shutouts)
    end
  end
end