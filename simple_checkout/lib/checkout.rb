require_relative 'item'

class Checkout
  def initialize
    @sub_total = []
  end

  def scan(item)
    @sub_total << item.price
  end

  def total
    @sub_total.sum
  end
end
