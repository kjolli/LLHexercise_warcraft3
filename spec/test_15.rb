# require_relative 'spec_helper'

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