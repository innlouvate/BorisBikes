require_relative 'bike.rb'

class DockingStation

	attr_accessor :bikes, :capacity
	DEFAULT_CAPACITY = 20

	def initialize(capacity = DEFAULT_CAPACITY)
		@capacity = capacity
	  @bikes = []
	end

	def release_bike
		@working_bikes = @bikes.select { |bike| bike.working? }
		raise "There are no bikes available" if empty?
		released_bike = @working_bikes.pop
		@bikes.delete(released_bike)
	end

	def dock(bike)
		raise "The dock is full" if full?
		@bikes << bike
	end

	private

	def full?
		@bikes.length >= capacity
	end

	def empty?
		@working_bikes.empty?
	end

	def release_broken_bikes
		release_to_van = @bikes.select { |bike| bike.working? == false }
		@bikes = @bikes.select { |bike| bike.working? }
	end
end
