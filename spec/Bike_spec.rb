require 'bike'

describe Bike do
  
  context '#working?' do
    it { is_expected.to respond_to(:working?) }

    it 'returns false when bike is reported broken' do
      subject.report_broken
      expect(subject.working?).to eq false
    end
  end

  it 'can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
  end

end