class SiegeEngine < Unit
 attr_reader :health_points, :attack_power
  def initialize
    super(400, 50)
  end

  def attack!(enemy)
    if enemy.is_a?(SiegeEngine) || enemy.is_a?(Building)
      (enemy.damage(attack_power) if !dead?) if !enemy.dead?
    end
  end
    
end

