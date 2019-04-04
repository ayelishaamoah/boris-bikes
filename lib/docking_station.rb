require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bikes are currently docked' if @bikes.empty?
    #@bike == nil ? fail 'No bikes are currently docked' : @bike
    @bikes
  end

  def dock(bike)
    raise 'The docking station is full' unless @bikes.empty?
    @bikes << bike
  end

end
