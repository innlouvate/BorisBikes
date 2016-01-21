require_relative 'bike.rb'

class DockingStation

	attr_accessor :bikes, :capacity, :broken_bikes
	DEFAULT_CAPACITY = 20

	def initialize(capacity = DEFAULT_CAPACITY)
		@capacity = capacity
	  @bikes = []
		@broken_bikes = []
	end

	def release_bike
		raise "There are no bikes available" if empty?
		released_bike = @bikes.pop
		if released_bike.working?
			released_bike
		else
			@broken_bikes << released_bike
			self.release_bike
		end
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
		@bikes.empty?
	end

	# def view_dock
	# 	@bikes_in_dock
	# end
end
