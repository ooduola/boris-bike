require 'van'

describe Van do

  let(:bike) { double :bike }
  it { is_expected.to respond_to(:collect_broken_bikes).with(1).argument }

  it { is_expected.to respond_to(:deliver_bike).with(1).argument }

  it 'should return broken bikes' do
    expect(subject.collect_broken_bikes(bike)).to eq bike
  end
end