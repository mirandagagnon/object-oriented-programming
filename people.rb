class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi my name is #{name}"
  end

end #end of parent class

class Student < Person
  def learn
    puts "I get it!"
  end

end #end of student class

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end

end #end of instructor class

#create an instance of the instructor and call his greeting
chris = Instructor.new("Chris")
chris.greeting
