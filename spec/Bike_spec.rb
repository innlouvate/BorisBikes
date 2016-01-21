require 'bike'

describe Bike do

	it { is_expected.to respond_to :working? }

<<<<<<< HEAD
=======
	describe '#working?' do
		it 'toggle changes working status' do
			bike = Bike.new
			bike.toggle_working
			expect(bike).to_not be_working
		end
	end

>>>>>>> 44778ecd5606c21688065170d1fd721ff0e875cd
end
