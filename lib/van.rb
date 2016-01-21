require 'docking_station'

class Van

  def initialize
    @broken_bikes = []
  end

  def collect_broken_bikes(bike)
    raise "This bike is not broken" if bike.working?
    @broken_bikes << bike
    
  end

end
