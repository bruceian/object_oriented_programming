class Paperboy

  def initialize(name, side)
    @name = name
    @side = side
    @experience = 0
    @earnings = 0
  end

  def quota
    (@experience / 2) + 50
  end

  def deliver(start_address, end_address)
    


end
