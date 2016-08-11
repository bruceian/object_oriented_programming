class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time > 12
      return "#{@meal_time - 12} PM" #need a value RETURNED not printed
    else
      return "#{@meal_time} AM"
    end
  end

  def meow
    return "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end

end

boston = Cat.new("Boston", "rice", 20)
miko = Cat.new("Miko", "bananas", 9)

puts miko.meow
puts boston.meow 
