class Person
  attr_accessor :name
end

p = Person.new
puts p.name
p.name = "Jack"
puts p.name