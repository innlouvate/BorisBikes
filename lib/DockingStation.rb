require_relative 'Bike.rb'

class DockingStation

	attr_reader :bike

	def release_bike
		Bike.new
	end

	def dock(bike)
		@bike = bike
	end

end

# dock = DockingStation.new
#
# bike1 = dock.release_bike
#
# dock.bike = bike1
#
# dock.bike
