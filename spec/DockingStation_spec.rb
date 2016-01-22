require 'DockingStation'
require 'bike'
describe DockingStation do
	subject(:DockingStation) {described_class.new}
#	DEFAULT_CAPACITY = 20
  	it { is_expected.to respond_to :release_bike }

  		describe "#Initialize" do
  			station = DockingStation.new
  			it "Initialize should set default capacity 20" do
  				expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
  			end
  		end

		describe "#release_bike" do
			# let(:bike) { double :bike }
			it "releases a bike" do
				# bike = Bike.new
				bike = double("bike",:broken? => false)
				subject.dock(bike)
				expect(subject.release_bike).to eq bike
			end

			it 'expects bike to be working in release_bike' do
				# bike = Bike.new
				bike = double("bike", :broken? => nil)
				expect(bike.broken?).to be nil
			end
			# let(:docking_station) { double :DockingStation }
			it "Does not release the bike if the bike is broken" do
				# bike = Bike.new
				bike = double("bike", :report_broken => true, :broken? => true)
				# allow(bike).to receive(:report_broken).and_return(true)
				# allow(bike).to receive(:broken?).and_return(true)
				bike.report_broken

				# allow(bike).to receive(:broken).and_return(true)
				# allow(docking_station).to receive(:release_bike).and_return{ fail "Bike is broken!" }
				# allow(docking_station).to receive(:dock).and_return(bike)
				subject.dock(bike)
				expect{subject.release_bike}.to raise_error "Bike is broken!"			
			end

		end

		describe "release bike failure" do
				it "Should raise error if bikes not available" do
					expect { subject.release_bike }.to raise_error "No Bike Error"
				end
		end

		describe "#dock_bike" do
			# let(:bike) { double :bike }
			# bike = Bike.new #basically the same as if we ran release bike first
			it 'returns docked bike' do
				bike = double("bike")
				expect(subject.dock(bike)).to eq bike
			end

			it 'docks broken bikes' do
				# bike = Bike.new
				bike = double("bike", :report_broken => true)
				# allow(bike).to receive(:report_broken).and_return(true)
				bike.report_broken
				expect(subject.dock(bike)).to eq bike
			end

			it 'should raise error if dock is full' do
				bike = double("bike") #:report_broken => true)

				subject.capacity.times do
					 subject.dock(bike)
				end
				expect { subject.dock(bike) }.to raise_error "Dock Full"
			end
		end

		it { is_expected.to respond_to(:bike_rack)}

		it { is_expected.to respond_to(:dock).with(1).argument }

end
