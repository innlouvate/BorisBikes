<<<<<<< HEAD
require_relative 'docking_station.rb'

class Bike

	def initialize
		@working = true
	end

	def working?
		@working
	end

	def broken
		@working = false
	end

=======
class Bike

  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end
>>>>>>> d2dd782793289971bb4e6a06ba6d09d53e3f9282

end
