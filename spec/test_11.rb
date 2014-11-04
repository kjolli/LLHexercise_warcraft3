require_relative 'spec_helper'

# #ENHANCEMENT 1
# # In most strategy games, like Warcraft III, buildings can also be attacked by units. 
# # Since a barracks is a building, it has substantial more HP (500) To make matters worse, 
# # a Footman does only HALF of its AP as damage to a Barracks. This is because they are 
# # quite ineffective against buildings.
# # Note: The damage amount should be an integer (Fixnum). Take the ceil division result.

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  it "starts off with 500 Health Points" do
    expect(@barracks.health_points).to eq(500)
  end

  describe "#damage" do
    it "should reduce the building's health_points by half of Footmans' regular AP" do
      @barracks.footman_damage(10) #Footman regular AP of 10
      expect(@barracks.health_points).to eq(495) # starts at 500
    end
  end

end

 # before :each do
 #   @footman = Footman.new
 #  end

