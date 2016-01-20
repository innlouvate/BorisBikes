require_relative 'Bike.rb'

class DockingStation

	attr_reader :bikes

	def initialize
		@bikes = []
	end

	def release_bike
		fail "No Bike Error" unless @bike
		@bikes
		@bike
	end

	def dock(bike)
		raise "Dock Full" if @bikes.length >= 20
		@bike = bike
		@bikes << bike
		@bike
	end
end
