require 'spec_helper'

describe Team do
  it "has a valid factory" do
    FactoryGirl.create(:team).should be_valid
  end

  describe "attributes" do
    it "responds to :players" do
      t = FactoryGirl.create(:team)
      t.should respond_to(:players)
    end

    it "responds to :name" do
      t = FactoryGirl.create(:team)
      t.should respond_to(:name)
    end
  end

  describe "validations" do
    it "must have a name" do
      FactoryGirl.build(:team, :name => nil).should_not be_valid
    end

    it "cannot have a name longer than 50 characters" do
      long_name = "a" * 51
      FactoryGirl.build(:team, :name => long_name).should_not be_valid
    end
  end
end