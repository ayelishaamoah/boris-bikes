require_relative 'docking_station'

class Bike
  def working?
    true
  end

  def report_bike
    @broken = true
  end

  def broken?
    @broken
  end
end
