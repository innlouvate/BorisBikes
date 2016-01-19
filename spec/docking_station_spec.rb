require 'docking_station'

=begin
describe DockingStation do
  #subject { DockingStation.new }
  it 'responds to the method release_bike' do
    expect(subject).to respond_to :release_bike
  end
end

=end

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it 'releases a bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

end


=begin
describe :release_bike do
  it {is_expected.not_to be_empty}
end

=end
