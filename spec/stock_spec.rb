require 'spec_helper'

describe Stock do
  let (:stock) { Stock.new("8L", 50) }
  let (:observer_name) { "8th Light" }
  let (:observer) { Observer.new }
  
  it "should initialize a new instance of stock with a symbol, starting price and blank observers array" do
    stock.symbol.should == "8L"
    stock.price.should == 50
    stock.observers.should == {}
  end
  
  it "should register an observer" do
    stock.register_observer(observer_name, observer)
    stock.observers.should include({observer_name => observer})
  end
  
  it "should remove an observer" do
    stock.register_observer(observer_name, observer)
    stock.remove_observer(observer_name)
    stock.observers.count.should == 0
  end
  
  it "should change the price of the stock" do
    stock.update_price(100)
    stock.price.should == 150
  end
  
end