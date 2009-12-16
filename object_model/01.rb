class Person
  def name=(val)
    @name = val
  end

  def name
    @name
  end
end

fred = Person.new
fred.name = 'Fred'

puts fred.name

jack = Person.new
jack.name = 'Jack'

puts jack.name

class Person
  def name=(val)
    @name = val
  end

  def name
    @name + "OMG"
  end
end

puts fred.name
puts jack.name
