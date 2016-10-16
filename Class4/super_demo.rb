class Person  
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "hello, my name is #{name}"
  end
end

class Engineer < Person
  attr_accessor :lang

  def initialize(name, age, lang) # 若我今天想改寫 Engineer 的建構式，可以傳入三個參數
    @lang = lang
    super(name, age)
    # super 會呼叫 parent class 裡面同樣名字的 method
    # 注意 super 只能在 method 裡面使用
  end
  def greet
    puts "hello, my name is 阿宅"
    super
  end
end

bob = Engineer.new("Bob", 17, "Ruby")
puts bob.name
puts bob.age
puts bob.lang
puts bob.greet