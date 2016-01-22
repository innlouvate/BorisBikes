require 'bike'

describe Bike do
<<<<<<< HEAD

	it { is_expected.to respond_to :working? }

	describe '#working?' do
		it 'toggle changes working status' do
			bike = Bike.new
			bike.broken
			expect(bike).to_not be_working
		end
	end

=======
	it { is_expected.to respond_to :broken? }

	it 'bike can be reported as broken' do
		subject.report_broken
		expect(subject).to be_broken
	end
>>>>>>> d2dd782793289971bb4e6a06ba6d09d53e3f9282
end
