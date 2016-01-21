require 'bike'

describe Bike do

	it { is_expected.to respond_to :working? }

	describe '#working?' do
		it 'toggle changes working status' do
			bike = Bike.new
			bike.broken
			expect(bike).to_not be_working
		end
	end

end
