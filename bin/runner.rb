# $LOAD_PATH.unshift(File.dirname(__FILE__))

require_relative '../lib/stock'
require_relative '../lib/ticker'
require_relative '../lib/stock_exchange'

stocks = []
stock_exchange = StockExchange.new

100.times do |ticker|
  stock_exchange.register_observer("Ticker #{ticker}", Ticker.new)
end

100.times do |stock|
  symbol = (0...3).map{ ('a'..'z').to_a[rand(26)] }.join
  price = rand(100)
  stocks << Stock.new(symbol, price)
end

stocks.each do |stock|
  stock.register_observer("Chicago Stock Exchange", stock_exchange)
end

20000.times do |stock_price_change|
  stocks.each do |stock|
    stock.update_price(rand(-40..40))
  end
end