class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    total_production = 221.0
    if(@speed >= 5 and @speed <= 8) 
      total_production = 0.90 * (221 * @speed)
    elsif(@speed == 9)
      total_production = 0.80 * (221 * @speed)
    elsif(@speed == 10)
      total_production = 0.77 * (221 * @speed)
    else
      total_production *= @speed;
    end
    total_production
  end

  def working_items_per_minute
    (production_rate_per_hour/60.0).floor
  end
end
