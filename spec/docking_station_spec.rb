require 'docking_station'

describe DockingStation do
  # it 'releases a working bike' do
  #  bike = subject.release_bike
  #  expect(bike).to be_working
  # end

  # it 'releases the docked bike' do
  #  bike = Bike.new
  #  subject.dock(bike)
  #  expect(subject.release_bike).to eq bike
  # end

  it 'throws an error if the dock is empty' do
    expect { subject.release_bike }.to raise_error("No bikes available")
  end

  it 'throws an error if the dock is full' do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new }
    bike = Bike.new
    expect { subject.dock(bike) }.to raise_error('The docking station is full')
  end

  it 'allows you to set a larger capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it 'has a variable capacity' do
    docking_station = DockingStation.new(50)
    50.times { docking_station.dock Bike.new }
    expect{ docking_station.dock Bike.new }.to raise_error 'The docking station is full'
  end

end
