class Person
  define_method :say do |msg|
    puts msg
  end
end

p = Person.new
p.say("hi")