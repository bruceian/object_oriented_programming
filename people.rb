class Person

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def name
    "Hi, my name is #{@first_name} #{@last_name}." #greeting method in superclass
  end

end

class Student < Person

  def intialize
  end

  def learn
    "I get it!"
  end

end

class Instructor < Person

  def initialize
  end

  def teach
    "Everything in Ruby is an Object."
  end

end
