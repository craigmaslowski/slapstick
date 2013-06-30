require "spec_helper"

describe Player do
  it "has a valid factory" do
    FactoryGirl.create(:player).should be_valid
  end

  describe "attributes" do
    before(:each) do
      @player = FactoryGirl.create(:player)
    end

    it "should respond to :name" do
      @player.should respond_to(:name)
    end

    it "should respond to :position_id" do
      @player.should respond_to(:position_id)
    end

    it "should respond to :games_played" do
      @player.should respond_to(:games_played)
    end

    it "should respond to :number" do
      @player.should respond_to(:number)
    end

    it "should respond to :image_url" do
      @player.should respond_to(:image_url)
    end

    it "should respond to :team_member" do
      @player.should respond_to(:team_member)
    end
  end
end