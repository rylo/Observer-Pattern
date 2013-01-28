class Subject
  
  attr_reader :observers
  
  def initialize
    @observers = {}
  end
  
  def register_observer(name, observer)
    @observers[name] = observer
  end
  
  def remove_observer(name)
    @observers.delete(name)
  end
  
  private
  
  def notify_observers(object = self)
    @observers.each do |stock_name, observer|
      observer.notify(object)
    end
  end
  
end