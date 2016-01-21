require 'DockingStation'
require 'bike'
describe DockingStation do
	subject(:DockingStation) {described_class.new}
	DEFAULT_CAPACITY = 20
  	it { is_expected.to respond_to :release_bike }

  		describe "#intitalize" do
  			station = DockingStation.new
  			it "Initialize should set default capacity 20" do
  				expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
  			end
  		end

		describe "#release_bike" do
			it "releases a bike" do
				bike = Bike.new
				subject.dock(bike)
				expect(subject.release_bike).to eq bike
			end

			it 'expects bike to be working in release_bike' do
				bike = Bike.new
				expect(bike.broken?).to eq nil
			end
		end
		describe "release bike failure" do
				it "Should raise error if bikes not available" do
					expect { subject.release_bike }.to raise_error "No Bike Error"
				end
		end

		describe "#dock_bike" do
			bike = Bike.new #basically the same as if we ran release bike first
			it 'returns docked bike' do
	    		# subject.dock(bike)
				expect(subject.dock(bike)).to eq bike
			end

			it 'should raise error if dock is full' do
				subject.capacity.times do
					 subject.dock(bike)
				end
				expect { subject.dock(bike) }.to raise_error "Dock Full"
			end
		end



		it { is_expected.to respond_to(:bikes)}

		it { is_expected.to respond_to(:dock).with(1).argument }

end
