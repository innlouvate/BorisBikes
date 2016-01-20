require_relative 'Bike.rb'

class DockingStation

	attr_reader :bikes

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
		bikes.count >= 20? true : false
	end

	def empty?
		bikes.count <= 0? true : false
	end

end
