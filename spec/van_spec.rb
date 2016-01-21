require 'van'
require 'docking_station'

describe Van do
  subject(:Van) {described_class.new}

  it { is_expected.to respond_to :collect_broken_bikes }

  describe "#collect_broken_bikes" do
    it "Receives broken bikes" do
      subject.collect_broken_bikes(bike)
      expect(bike).not_to be_working
    end
  end

end
