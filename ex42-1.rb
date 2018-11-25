
class Animal
  def name
    puts "Animal"
  end
end

module ChangeName
  def name
    puts "Module"
  end
end

class Cat < Animal
  include ChangeName

  def name
    super
    puts "Cat"
    super
  end
end

c = Cat.new
c.name
