require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it 'releases a bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected. to respond_to :dock_bike }
  it 'dock_bike increase no_people by one' do
    expect(subject.dock_bike).to change{no_bikes+1}.by(1)
  end
end
