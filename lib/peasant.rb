class Peasant < Unit

  def initialize
    super(35, 0)
  end

  def attack!(enemy)
    enemy.damage(@attack_power)
  end

  def damage(damage)
    @health_points -= damage
  end

end

