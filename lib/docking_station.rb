require_relative 'bike'

class DockingStation
  attr_reader :bike, :capacity

  STATION_CAPACITY = 20

  def initialize(capacity = STATION_CAPACITY)
    @bike = []
    @capacity = capacity
  end

  def release_bike
    raise "no bikes avaiable" if empty? 
    raise "bike is broken" if broken?
    @bike.pop
  end

  def dock(bike)
    raise "At full capacity" if full?
    @bike << bike
  end

  private 

  def full?
    @bike.length >= @capacity
  end

  def empty?
    @bike.empty? 
  end

  def broken?
    @bike.last.broken?
  end
end