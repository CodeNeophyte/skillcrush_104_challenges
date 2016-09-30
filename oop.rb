class Dog
  attr_accessor :name, :breed

  def initialize(name, breed )
    @name = name
    @breed = breed
  end

  def bark
    puts "#{@name} barks like: WOOF WOOF WOOF!"
  end

  def put_breed
    puts "#{@name}'s breed is: #{@breed}.'"
  end
end

fido = Dog.new("Fido", "Lhasa Apso")
fido.bark
fido.put_breed
puts fido.inspect
