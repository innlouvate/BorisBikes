class DockingStation
  attr_reader 'no_bikes'

  def initialize
    @no_bikes = 0
  end

  def release_bike
    Bike.new
  end

  def dock_bike
    @no_bikes += 1
  end
end

class Bike
  def working?
    true
  end
end
