require 'bike'

describe Bike do
  
  context '#working?' do
    it { is_expected.to respond_to(:working?) }

    it 'should return true' do
      expect(subject.working?).to be(true)
    end
  end
end