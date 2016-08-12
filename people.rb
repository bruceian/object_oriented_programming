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

  def learn
    "I get it!"
  end

end

class Instructor < Person

  def teach
    "Everything in Ruby is an Object."
  end

end

chris = Instructor.new("Chris", "Peters")
chris.name
cristina = Student.new("Cristina", "Carvalo")
cristina.name
chris.teach
cristina.learn
cristina.teach # this method does not work for Cristina because the method
              # exits outside of her class and is not part of her superclass
