require 'bike'

describe Bike do
  
  context '#working?' do
    it { is_expected.to respond_to(:working?) }
  end
end