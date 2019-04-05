require_relative 'bike'

class DockingStation
  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'The docking station is full' if full?
    @bikes << bike
  end

private

  def full?
    @bikes.length >= DEFAULT_CAPACITY 
  end

  def empty?
    @bikes.empty?
  end
end
