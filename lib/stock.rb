require_relative './subject'

class Stock < Subject
  attr_reader :symbol, :price
  
  def initialize(symbol, price)
    @symbol = symbol
    @price = price
    @observers = {}
  end

  def update_price(price_change)
    @price += price_change
    notify_observers
  end
end