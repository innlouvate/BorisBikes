require_relative 'Bike.rb'

class DockingStation

	attr_reader :bikes

	DEFAULT_CAPACITY = 20

	def initialize
		@bikes = []
	end

	def release_bike
		fail "No Bike Error" if empty?
		@bikes
		@bike
	end

	def dock(bike)
		raise "Dock Full" if full?
		@bike = bike
		@bikes << bike
		@bike
	end

	private
	def full?
		bikes.count >= DEFAULT_CAPACITY ? true : false
	end

	def empty?
		bikes.count <= 0 ? true : false
	end

end
