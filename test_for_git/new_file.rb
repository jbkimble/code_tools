# This is the first files original work
class DatClass

  def self.some_method(name)
    puts "Hello " + name
  end

  def self.second_awesome_method(name)
    puts "Hey #{name}, you're awesome!"
  end

  def self.third_method(name)
    puts "Hey #{name}, go believe in your ability to do what needs to be done to help others :D!"
  end

end

puts "Calling methods..."
DatClass.some_method("Matilda")
DatClass.second_awesome_method("Matilda")
DatClass.third_method("Matilda")
