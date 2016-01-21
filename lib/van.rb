require_relative 'docking_station'

class Van
  DEFAULT_CAPACITY = 10
  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @broken_bikes = []
    @working_bikes = []
  end

  def collect_broken_bikes(bike)
    raise "This bike is not broken" if bike.working?
    @broken_bikes << bike
  end

  def dropoff_broken_bikes
		raise "There are no broken bikes in the van" if @broken_bikes.count == 0
		@broken_bikes.pop
	end

  def collect_working_bikes(bike)
    raise "This bike is still broken" unless bike.working?
    @working_bikes << bike
  end

  def dropoff_working_bikes
		raise "There are no working bikes in the van" if @working_bikes.count == 0
		@working_bikes.pop
	end
end
