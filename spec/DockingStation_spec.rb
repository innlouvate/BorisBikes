require 'DockingStation'

describe DockingStation do
	subject(:DockingStation) {described_class.new}
	let(:bike) { double :bike }

  	it { is_expected.to respond_to :release_bike }

		describe '#release_bike' do
			it 'releases a bike' do
				allow(bike).to receive(:working?).and_return(true)
				subject.dock(bike)
	  		expect(subject.release_bike).to eq bike
	  	end
		end

		describe '#release_bike' do
			it 'expects release_bike to raise an error' do
				allow(bike).to receive(:working?).and_return(true)
	  		expect{ subject.release_bike }.to raise_error("There are no bikes in the dock")
	  	end
		end

    describe '#dock' do
    	it 'returns docked bikes' do
    		subject.dock bike
    		expect(subject.bikes).to include bike
    	end
    end

    describe '#dock' do
      it 'expects dock to raise an error' do
      subject.capacity.times { subject.dock bike }
        expect { subject.dock bike }.to raise_error("The dock is full")
      end
    end

  	it { is_expected.to respond_to(:dock).with(2).argument }

		describe 'initialization' do
			subject { DockingStation.new }
			it 'defaults capacity' do
				DockingStation::DEFAULT_CAPACITY.times { subject.dock bike }
				expect{ subject.dock bike }.to raise_error("The dock is full")
			end
		end

		#marked/reports bike as not working


		describe '#dock' do
			it 'expects any bike to be docked, broken or not' do
				allow(bike).to receive(:toggle_working)
				subject.dock(bike)
				subject.dock(bike, false)
				expect(subject.bikes.length).to eq 2
			end
		end

		describe '#release_bike' do
			it "releases working bikes only" do
				allow(bike).to receive(:working?).and_return(true)
				subject.dock(bike)
				#subject.dock(bike, false)
				released_bike = subject.release_bike
				expect(released_bike).to be_working
			end
		end

end
