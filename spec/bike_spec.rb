require 'bike'

describe Bike do
  it { is_expected.to respond_to :working? }

  it 'reports a broken bike' do
    subject.report_bike
    expect(subject).to be_broken
  end

end
