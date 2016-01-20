require 'DockingStation'

describe DockingStation do
	subject(:DockingStation) {described_class.new}

  	it { is_expected.to respond_to :release_bike }

  	it 'expects bike to be working in release_bike' do
  		expect(subject.release_bike.working?).to be true
  	end
	
	describe "#release_bike" do
		it "releases a bike" do
			bike = Bike.new
			subject.dock(bike)
			expect(subject.release_bike).to eq bike
		end

		it "Should raise error if bikes not available" do
			expect { subject.release_bike }.to raise_error "No Bike Error" 
		end 
	end

	describe "#dock_bike" do
		it 'returns docked bikes' do
			bike = Bike.new #basically the same as if we ran release bike first
    		subject.dock(bike)
			expect(subject.bike).to eq bike
		end

		it { is_expected.to respond_to(:bike)}

  		it { is_expected.to respond_to(:dock).with(1).argument }
  	end
end
