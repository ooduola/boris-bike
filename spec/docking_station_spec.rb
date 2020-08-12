require 'docking_station'

describe DockingStation do

  context '#release_bike' do
    it { is_expected.to respond_to(:release_bike) }

    it 'releases docked bike' do
      bike = double(:bike)
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error if no bikes are available' do
      expect { subject.release_bike }.to raise_error 'no bikes avaiable'
    end

    it 'should return a bike' do
      bike = double(:bike)
      subject.dock(bike)
      subject.release_bike
      expect(bike).to be_working
    end

    it 'should not release broken bike' do
      bike = double(:bike)
      bike.report_broken
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error 'bike is broken'
    end
  end

  context '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'returns a bike after being docked' do
      bike = double(:bike)
      expect(subject.dock(bike)).to eq [bike]
    end

    it ' raises error when station has more than default capacity 20' do
      subject.capacity.times { subject.dock(double(:bike)) }
      expect { subject.dock(Bike.new) }.to raise_error "At full capacity"
    end

    it 'raises an error when station has capacity of 30' do
      subject = DockingStation.new(30)
      30.times { subject.dock(double(:bike)) }
      expect { subject.dock(double(:bike)) }.to raise_error "At full capacity"
    end
  end

  context '#bike' do
    it { is_expected.to respond_to(:bike) }

    it 'returns docked bike' do
      bike = double(:bike)
      subject.dock(bike)
      expect(subject.bike).to eq [bike]
    end
  end 

  context '#capacity' do
    it 'returns the full capacity of the station' do
      expect(subject.capacity).to eq DockingStation::STATION_CAPACITY
    end

    it 'can change capacity of station' do
      subject = DockingStation.new(3)
      expect(subject.capacity).to eq 3
    end

    it 'raises error if the capacity is reached' do
      
    end
  end
end
