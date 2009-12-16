class Person
  def strength
    33
  end
end

class Guy < Person
  def name
    "Jack Daniels"
  end
end

jack = Guy.new

puts jack.strength