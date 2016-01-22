require_relative 'Bike.rb'

class DockingStation
	attr_reader :capacity

	DEFAULT_CAPACITY = 20

	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end

	def bike_rack
		@bikes.dup
	end

	def release_bike
		fail "No Bike Error" if empty?
		bike = @bikes.pop
		fail "Bike is broken!" if bike.broken?
		@bike = bike
	end

	def dock(bike)
		raise "Dock Full" if full?
	  @bike = bike
		@bikes << bike
		@bike
	end

	private
	attr_reader :bikes

	def full?
		bikes.count >= capacity ? true : false
	end

	def empty?
		bikes.count <= 0 ? true : false
	end

end
