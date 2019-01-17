require 'checkout'

describe Checkout do
  let(:item_1) { double(:item, price: 5) }
  let(:item_2) { double(:item, price: 3) }

  describe '#scan' do
    it { is_expected.to respond_to(:scan).with(1).argument }
  end
  describe '#total' do
    it { is_expected.to respond_to :total }
    it 'should return the total of sub-total' do
      subject.scan(item_1)
      subject.scan(item_2)
      expect(subject.total).to eq 8
    end
  end
end
