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
  
end
