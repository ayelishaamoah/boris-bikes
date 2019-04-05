require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'The docking station is full' if @bikes.length >= 20
    @bikes << bike
  end

end
