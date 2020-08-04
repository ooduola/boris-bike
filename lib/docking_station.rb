require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    raise "no bikes avaiable" if !@bike 
    @bike
  end

  def dock(bike)
    @bike = bike
  end
end