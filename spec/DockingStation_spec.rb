require 'DockingStation'

describe DockingStation do
	subject(:DockingStation) {described_class.new}

  	it { is_expected.to respond_to :release_bike }

		describe '#release_bike' do
			it 'releases a bike' do
				subject.dock(double(:bike))
	  		expect(subject.release_bike).to eq bike
	  	end
		end

		describe '#release_bike' do
			it 'expects release_bike to raise an error' do
	  		expect{ subject.release_bike }.to raise_error("There are no bikes in the dock")
	  	end
		end

    describe '#dock' do
    	it 'returns docked bikes' do
    		subject.dock double(:bike)
    		expect(subject.bikes).to include bike
    	end
    end

    describe '#dock' do
      it 'expects dock to raise an error' do
      subject.capacity.times { subject.dock double(:bike) }
        expect { subject.dock double(:test_bike) }.to raise_error("The dock is full")
      end
    end

  	it { is_expected.to respond_to(:dock).with(2).argument }

		describe 'initialization' do
			subject { DockingStation.new }
			it 'defaults capacity' do
				DockingStation::DEFAULT_CAPACITY.times { subject.dock double(:bike) }
				expect{ subject.dock double(:test_bike) }.to raise_error("The dock is full")
			end
		end

		#marked/reports bike as not working
		describe '#dock' do
			it 'reports bike as not working when you dock it' do
				expect{subject.dock(double(:bike), false)}.to change{ bike.working? }.from(true).to(false)
			end
		end

		describe '#dock' do
			it 'expects any bike to be docked, broken or not' do
				subject.dock(double(:bike))
				subject.dock(double(:broken_bike), false)
				expect(subject.bikes.length).to eq 2
			end
		end

		describe '#release_bike' do
			it "releases working bikes only" do
				subject.dock(double(:bike))
				subject.dock(double(:broken_bike), false)
				bike = subject.release_bike
				expect(bike).to be_working
			end
		end

end
