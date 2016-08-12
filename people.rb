class Person

  def intialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def name
    "#{@first_name} #{last_name}"
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
