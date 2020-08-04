require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize 
    @bike = nil
    @docks = []
  end

  def release_bike
    raise "no bikes avaiable" if !@bike 
    @bike
  end

  def dock(bike)
    raise "At full capacity" if @docks.length >= 1
    @docks << bike
    @bike = bike
  end
end