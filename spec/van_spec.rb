require "Van.rb"

describe Van do
let(:bike) {double :bike}
  it "It collects broken bikes from the docking station." do
    expect(subject).to respond_to(:collect_broken_bike)
  end

  describe "#collect_broken_bike" do
    it "Accepts bikes" do
      expect{subject.collect_broken_bike(bike)}.to change{subject.broken_bikes.count}.by 1
    end
  end

  describe "#deposit_broken_bike" do
    it "Deposits a broken bike" do
      allow(:bike).to receive(:broken?).and_return(true)
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end
end
