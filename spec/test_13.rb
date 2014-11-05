require_relative 'spec_helper'

#ENHANCEMENT 3
# A dead unit cannot attack another unit. Conversely, an alive unit
# will also not attack another unit that is already dead.

describe Unit do

  describe "#attack!" do

   it "dead unit cannot attack" do
      @unit = Unit.new(0, 5)
      enemy = Unit.new(30, 5)
      @unit.attack!(enemy)
      expect(enemy.health_points).to eq(30)
    end
  end

  describe "#attack!" do

   it "unit cannot attack dead enemy" do
      @unit = Unit.new(30, 5)
      enemy = Unit.new(0, 5)
      @unit.attack!(enemy)
      expect(enemy.health_points).to eq(0)
    end
  end

end

#   before :each do
#     @unit = Unit.new(30, 5)
#   end

#   describe "#attack!" do
#     it "cannot attack a dead unit" do
#       enemy = Unit.new(0, 5)
#       @unit.attack!(enemy)
#       expect(enemy.health_points).to eq(0)
#     end
#   end

# end