require 'spec_helper'

class MockObserver < Observer
end

describe Observer do
  let (:observer) { MockObserver.new }
  let (:stock) { double("Stock") }
  
  it "should be notified of changes from a stock" do
    { "8L" => 50, 
      "8L" => 100,
      "Kittens" => 9001 }.each do |symbol, price|
      stock.stub(:symbol) { symbol }
      stock.stub(:price) { price }
      observer.notify(stock).should == stock
    end
  end
end