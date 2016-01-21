require_relative 'DockingStation.rb'

class Bike
attr_accessor :working

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
