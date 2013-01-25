require 'spec_helper'

class MockObserver
  include Observer
end

describe Observer do
  let (:observer) { MockObserver.new }
  let (:stock) { double("Stock") }
  
  it "should be notified of changes from a stock" do
    { "8L" => 50, 
      "8L" => 100,
      "Kittens" => 9001 }.each do |name, price|
      stock.stub(:symbol) { name }
      stock.stub(:price) { price }
      observer.notify(stock).should == "Stock price of #{name} is now #{price}"
    end
  end
end