class Footman < Unit

  def initialize
   super(60, 10)
  end
  
  def attack!(enemy)
    enemy.damage(@attack_power)
  end

  def damage(damage)
    @health_points -= damage
  end
  
end