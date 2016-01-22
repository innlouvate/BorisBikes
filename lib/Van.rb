class Van

  attr_accessor :broken_bikes

  def initialize
    @broken_bikes = []
  end

  def collect_broken_bike(bike)
    @broken_bikes << bike
  end

  def deposit_broken_bike
    @broken_bikes.pop
  end
end
