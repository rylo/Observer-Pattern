module Subject
  
  def register_observer(name, observer)
    @observers[name] = observer
  end
  
  def remove_observer(name)
    @observers.delete(name)
  end
  
  private
  
  def notify_observers
    @observers.each do |stock_name, observer|
      observer.notify(self)
    end
  end
  
end