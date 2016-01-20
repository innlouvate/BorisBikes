require_relative 'Bike.rb'

class DockingStation

	attr_reader :bike

	def release_bike
		fail "No Bike Error" unless @bike
		@bike
	end

	def dock(bike)
		@bike = bike
	end
end


