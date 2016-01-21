require_relative 'docking_station.rb'

class Bike

	def initialize
		@working = true
	end

	def working?
		@working
	end

	def toggle_working
		@working ? @working = false : @working = true
	end


end
