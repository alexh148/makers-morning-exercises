require 'note'

describe Note do
  describe '#defaults' do
    subject { described_class.new('Title', 'Body') }
    it 'should have a title' do
      expect(subject.title).to eq 'Title'
    end
    it 'should have a body' do
      expect(subject.body).to eq 'Body'
    end
  end
end
