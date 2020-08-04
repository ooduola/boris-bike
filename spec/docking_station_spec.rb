require 'docking_station'

describe DockingStation do

  context '#release_bike' do
    it { is_expected.to respond_to(:release_bike) }

    it 'releases docked bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error if no bikes are available' do
      expect { subject.release_bike }.to raise_error 'no bikes avaiable'
    end

    it 'should return a bike' do
      bike = Bike.new
      subject.dock(bike)
      subject.release_bike
      expect(bike).to be_working
    end
  end


  context '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'returns a bike after being docked' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

    it ' raises error when station has more than default capacity 20' do
      20.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error "At full capacity"
    end
  end

  context '#bike' do
    it { is_expected.to respond_to(:bike) }

    it 'returns docked bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq [bike]
    end
  end
  
end