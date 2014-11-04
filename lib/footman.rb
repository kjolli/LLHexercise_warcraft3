class Footman < Unit

  def initialize
   super(60, 10)
  end
  
  def attack!(enemy)
    enemy.damage(@attack_power)
  end

  def damage(damage_amount)
    @health_points -= damage_amount
  end
  
end