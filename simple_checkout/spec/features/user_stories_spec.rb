require 'item'
# The requirements for the system are as follows:
describe '#user_stories' do
# As a shopper
# So I know how much an item costs
# I would like to be able to see its price
  it 'should return the items price' do
    item = Item.new(5)
    expect(item.price).to eq 5
  end
# As a shopper
# So that I can buy an item
# I would like to be able to scan items at the checkout

# As a shopper
# So that I know how much to pay
# I would like to be able to see a total for all scanned items
#
# As a shopper
# So that I know how much to pay
# I would like to see all prices correctly formatted (£xx.xx)
end
