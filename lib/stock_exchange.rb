require "observer"

class StockExchange < Subject
  def notify(object)
    notify_observers(object)
  end
end