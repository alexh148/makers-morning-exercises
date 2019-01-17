require 'item'

describe Item do
  subject { described_class.new(5) }
  context '#defaults' do
    it 'should have a price' do
      expect(subject.price).to eq 5
    end
  end
end
