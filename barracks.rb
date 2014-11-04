class Barracks

  attr_accessor :gold, :food

  def initialize
    @gold = 1000
    @food = 80
  end

  def train_peasant
    if can_train_peasant? == true
      @gold -= 90
      @food -= 5
      Peasant.new
    else
      return nil
    end
  end

  def can_train_peasant?
    if gold >= 90 && food >= 5
      return true
    else 
      return false
    end
  end

  def train_footman
    if can_train_footman? == true
      @gold -= 135
      @food -= 2
      Footman.new
    else
      return nil
    end
  end

  def can_train_footman?
    if gold >= 135 && food >= 2
      return true
    else 
      return false
    end
  end

end
