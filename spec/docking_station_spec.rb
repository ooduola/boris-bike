require 'docking_station'

describe DockingStation do

  context '#release_bike' do
    it { is_expected.to respond_to(:release_bike) }
  end

  it 'should return a bike' do
    expect(subject.release_bike).to be_a(Bike)
  end
  
end