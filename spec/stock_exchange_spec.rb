require 'spec_helper'

describe StockExchange do
  let (:stock_exchange) { StockExchange.new }
  let (:stock) { double("Stock") }
  let (:ticker) { double("Ticker") }
  
  it "should register an observer" do
    stock_exchange.observers.count.should == 0
    stock_exchange.register_observer("test ticker", ticker)
    stock_exchange.observers["test ticker"].should == ticker
  end
  
  it "should notify its observers" do
    stock_exchange.notify(ticker).should == ticker
  end
end