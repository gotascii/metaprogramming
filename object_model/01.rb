class Person
  attr_accessor :name, :dob

  def age
    puts "too old!"
  end

  def marry(other)
    puts "I'm marrying #{other}!"
  end
end

fred = Person.new

puts fred.inspect