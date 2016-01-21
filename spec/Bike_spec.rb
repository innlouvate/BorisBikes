require 'Bike'

describe Bike do
	subject(:Bike) {described_class.new}
	let(:station) { double :station }

	it { is_expected.to respond_to :working? }

	describe '#toggle_working' do
		it 'reports bike as not working when you dock it' do
			allow(station).to receive(:dock)
			expect{bike}.to change{ subject.working? }.to(false)
		end
	end

end
