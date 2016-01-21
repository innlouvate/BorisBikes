require 'bike'

describe Bike do
  it {is_expected.to respond_to :broken?}

<<<<<<< HEAD
  it 'bike can be reported as broken' do
    subject.report_broken
    expect(subject).to be_broken
  end
=======
	it { is_expected.to respond_to :broken? }

	it 'bike can be reported as broken' do
		subject.report_broken
		expect(subject).to be_broken
	end

>>>>>>> 1324f873d56313beb6514de8c39d276c3a86d98a
end
