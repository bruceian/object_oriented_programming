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
    q = quota
    earn = 0
    exp = 0

    (start_address..end_address).map do |num_houses|
      if (num_houses % 2 == 0) && (@side == "even")
        exp += 1
        earn += 0.25
      elsif
        (num_houses % 2 == 1) && (@side == "odd")
        exp += 1
        earn += 0.25
      end
    end

    if exp > quota
      earn += (exp - quota) * 0.25
    end

    if exp < quota
      earn -= 2
    end

    @experience += exp
    @earnings += earn
end

def report
  "I'm #{@name}, I've delivered #{@experience} papers and earned $#{@earnings}."
end

def earnings
  @earnings
end

end
