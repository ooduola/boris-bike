require_relative 'bike'

class DockingStation
  attr_reader :bike

  STATION_CAPACITY = 1

  def initialize 
    @bike = nil
    @docks = []
  end

  def release_bike
    raise "no bikes avaiable" if !@bike 
    @bike
  end

  def dock(bike)
    raise "At full capacity" if @docks.length >= STATION_CAPACITY
    @docks << bike
    @bike = bike
  end
end