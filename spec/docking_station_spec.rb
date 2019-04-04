require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  # it 'releases a working bike' do
  #  bike = subject.release_bike
  #  expect(bike).to be_working
  # end

  it { is_expected.to respond_to :dock }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it 'releases the docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it 'throws an error if the dock is empty' do
    expect { subject.release_bike }.to raise_error("No bikes are currently docked")
  end

  it 'throws an error if the dock is full' do
    bike = Bike.new
    subject.dock(bike)
    bike_two = Bike.new
    expect { subject.dock(bike_two) }.to raise_error("The docking station is full")
  end
end
