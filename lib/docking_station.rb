require_relative 'bike'

class DockingStation
  attr_reader :bike

  STATION_CAPACITY = 20

  def initialize 
    @bike = []
  end

  def release_bike
    raise "no bikes avaiable" if @bike.empty? 
    @bike.pop
  end

  def dock(bike)
    raise "At full capacity" if full?
    @bike << bike
  end

  private 

  def full?
    @bike.length >= STATION_CAPACITY
  end

  def empty?
    @bike.empty? 
  end
end