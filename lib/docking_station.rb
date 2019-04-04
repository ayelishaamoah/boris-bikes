require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    raise 'No bikes are currently docked' unless @bike
    #@bike == nil ? fail 'No bikes are currently docked' : @bike
    @bike
  end

  def dock(bike)
    raise 'The docking station is full' if @bike
    @bike = bike
  end

end
