require 'pry'
class Person

  attr_accessor :name, :age #類似 Java 的 public 會有定義好的 getter, setter

  @@number_of_people = 0 #表示跟 Class: Person 綁定

  def initialize(name, age)
    @name = name
    @age = age
    @@number_of_people += 1

    binding.pry
  end

  def greet(word)
    puts "#{word}, my name is #{@name}"
  end

  def self.hello
    puts "Hello, I am Person Class"
  end

  def self.info
    @@number_of_people
  end

end

class Enginner < Person
  def program
    puts "I know programming"
  end
end

bob = Person.new("Bob", 20)
puts bob.name
puts bob.age

mary = Person.new("Mary", 19)

Person.hello
puts Person.info

