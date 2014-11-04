class Barracks < Building

  attr_accessor :gold, :food

  def initialize
    super(500, 0)
    @gold = 1000
    @food = 80
  end

  def damage(damage)
    @health_points -= (damage/2).ceil
  end

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

  def train_peasant
    if can_train_peasant? == true
      @gold -= 90
      @food -= 5
      @peasant = Peasant.new
    else nil
    end
  end

  def can_train_peasant?
    if gold >= 90 && food >= 5
      return true
    else 
      return false
    end
  end

end

