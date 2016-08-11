class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at(eat_time)
    "#{@meal_time}PM"
  end

  def meow
    return "My name is #{@name} and I eat #{@preferred_food} "
  end

end
