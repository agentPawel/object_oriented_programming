class People

  attr_accessor :name

  def initialize (name)
    @name = name
  end


  def greeting
    "Hi, my name is #{name}"
  end
end

class Instructor < People
  def teach
    puts "Everything in Ruby is an Object"
  end
end

class Student < People
  def learn
    puts "I get it!"
  end
end

chris=Instructor.new ("Chris")
puts chris.greeting

cristina=Student.new ("Cristina")
puts cristina.greeting

chris.teach

puts cristina.learn

# puts cristina.teach  (Will display error, as the method "teach" is only part of the Instructor class.)
