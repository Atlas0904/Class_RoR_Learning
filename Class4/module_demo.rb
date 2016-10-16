module Knowledge
  NUMBER_OF_BOOKS = 10
  def program?
    puts "I know how to program"
  end
  def read
    puts "I can read"
  end
  def getBookNumber
    NUMBER_OF_BOOKS
  end
end

class Person  
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def age
    @age-=1
  end
end

class Engineer < Person
  include Knowledge
end

bob = Engineer.new("Bob", 17)
bob.program?
bob.read
puts bob.getBookNumber
puts Knowledge.program