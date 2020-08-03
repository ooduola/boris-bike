require 'DockingStation'

describe DockingStation do

  context '#release_bike' do
    it 'responds to release bike' do
      expect(DockingStation.new).to respond_to(:release_bike)
    end
  end
  
end