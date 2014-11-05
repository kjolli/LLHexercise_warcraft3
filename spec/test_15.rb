require_relative 'spec_helper'

#ENHANCEMENT 5
# Introduce a SiegeEngine Unit. The SiegeEngine is very effective against buildings 
# such as the Barracks. It is however ineffective against other units (can't attack 
# them, as though they were dead).
# So unlike with Footman (whose attacks do a fraction of the damage they normally would), the SiegeEngine does 2x the damage against the Barracks
# Also, Siege Engines can attack other siege engines even though they cannot attack any other units (such as Peasants or Footmen)
# Stats:
# AP: 50
# HP: 400
# Cost: 200 gold, 60 lumber, 3 food
# Notes:
# You will need to require the seige_engine.rb file in spec_helper.rb

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
  end

  it "has and knows its HP (health points)" do
    expect(@siege_engine.health_points).to eq(400)
  end

  it "has and knows its AP (attack power)" do
    expect(@siege_engine.attack_power).to eq(50)
  end

  it "Should return True if Unit HP is less than Zero" do
      expect(@siege_engine.dead?).to eq(false) 
  end

  describe "#attack!" do
   it "siege engine can attack a Siege Engine" do
      enemy = SiegeEngine.new
      @siege_engine.attack!(enemy)
      expect(enemy.health_points).to eq(350) #starts with 400
    end

    it "siege engine can attack a Barrack" do
      enemy = Barracks.new
      @siege_engine.attack!(enemy)
      expect(enemy.health_points).to eq(450) 
    end

    it "siege engine can't attack a Unit of than Siege Engine" do
      enemy = Unit.new(50, 5)
      @siege_engine.attack!(enemy)
      expect(enemy.health_points).to eq(50)
    end
end

describe Barracks do

    before :each do
      @barracks = Barracks.new
    end

  describe "#train_siege_engine" do
     @barracks = Barracks.new

    it "costs 200 gold" do
      @barracks.train_siege_engine
      expect(@barracks.gold).to eq(800) # starts at 1000
    end

    it "costs 3 food" do
      @barracks.train_siege_engine
      expect(@barracks.food).to eq(77) # starts at 80
    end

    it "costs 60 lumber" do
      @barracks.train_siege_engine
      expect(@barracks.lumber).to eq(440) # starts at 500
    end

    it "produces a siege_engine unit" do
      siege_engine = @barracks.train_siege_engine
      expect(siege_engine).to be_an_instance_of(SiegeEngine)
    end

    describe "#damage" do
      it "HP taken off of Barracks id double the regular AP of SiegeEngine" do
        @barracks.siege_engine_damage(50) #Footman regular AP of 10
        expect(@barracks.health_points).to eq(400) # starts at 500
      end
    end
  end

  # describe Unit do

  #   describe "#attack!" do

  #  it "dead unit cannot attack" do
  #     @unit = Unit.new(0, 5)
  #     enemy = Unit.new(30, 5)
  #     @unit.attack!(enemy)
  #     expect(enemy.health_points).to eq(30)
  #   end
  # end




end

end