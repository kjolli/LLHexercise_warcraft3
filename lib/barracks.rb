class Barracks < Building

  attr_accessor :gold, :food, :lumber

  def initialize
    super(500, 0)
    @gold = 1000
    @food = 80
    @lumber = 500
  end

# Footman

  def train_footman
    if can_train_footman? == true
      @gold -= 135
      @food -= 2
      @footman = Footman.new
    else nil
    end
  end

  def can_train_footman?
    if gold >= 135 && food >= 2
      return true 
    else 
      return false
    end
  end

  def footman_damage(damage)
    @health_points -= (damage / 2).ceil
  end

#Peasant

  def can_train_peasant?
    if gold >= 90 && food >= 5
      return true
    else 
      return false
    end
  end

  def train_peasant
    if can_train_peasant? == true
      @gold -= 90
      @food -= 5
      @peasant = Peasant.new
    else nil
    end
  end
 
#SiegeEngine

  def can_train_siege_engine?
    if gold >= 200 && food >= 3 && lumber >= 60
      return true
    else 
      return false
    end
  end

  def train_siege_engine
    if can_train_siege_engine? == true
      @gold -= 200
      @food -= 3
      @lumber -= 60
      @siege_engine = SiegeEngine.new
    else nil
    end
  end

  def siege_engine_damage(damage)
    @health_points -= (damage * 2).ceil
  end

end

