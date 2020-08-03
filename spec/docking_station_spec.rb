require 'docking_station'

describe DockingStation do

  context '#release_bike' do
    it { is_expected.to respond_to(:release_bike) }
  end

  it 'should return a bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  context '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument }
  end
  
end