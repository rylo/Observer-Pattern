require 'subject'

class Stock
  include Subject
  
  attr_reader :symbol, :price, :observers
  
  def initialize(symbol, price)
    @symbol = symbol
    @price = price
    @observers = {}
  end

  def update_price(price_change)
    @price += price_change
  end
end