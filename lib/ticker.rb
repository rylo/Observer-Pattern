require_relative "./observer"

class Ticker < Observer
  def notify(object)
    p "#{object.symbol} - #{object.price}"
  end
end