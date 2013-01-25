require 'spec_helper'

describe StockExchange do
  let (:stock_exchange) { StockExchange.new }
  
  it "should register an observer" do
    stock_exchange.notify
  end
  
end