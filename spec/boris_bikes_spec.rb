require 'boris_bikes'

describe DockingStation do
  describe 'release_bike' do
    it { is_expected.to respond_to(:release_bike) }
  end
end
