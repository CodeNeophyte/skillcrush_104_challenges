class Pet
  attr_accessor :name, :breed

  def initialize(name, breed )
    @name = name
    @breed = breed
  end

  def put_breed
    puts "#{@name}'s breed is: #{@breed}.'"
  end
end
class Dog < Pet
  def bark
    puts "#{@name} barks like: WOOF WOOF WOOF!"
  end
end
class Cat < Pet
  def meow
    puts "#{@name} likes to purr and meow."
  end
end

fido = Dog.new("Fido", "Lhasa Apso")
fido.bark
fido.put_breed

pepe = Cat.new("Pepe", "Bengal")
pepe.meow
pepe.put_breed

puts fido.inspect
puts pepe.inspect
