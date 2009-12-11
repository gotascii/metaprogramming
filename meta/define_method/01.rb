# oh fuck check out Module#define_method!

class Person
  define_method :say do |msg|
    puts msg
  end
end

Person.new.say("hi")

# that's not very boner, but something like this is

class BoozeRatings
  def self.rate(brand, rating)
    define_method(brand) do
      puts rating
    end
  end

  rate :jack, 5
  rate :jim, 4
end

# remember macros?  we just made some, some not so unlike... attr_accessor

# lets make our own, call it aa

class Module
  def aa(name)
    define_method("#{name}=") { |value| instance_variable_set("@#{name}", value) }
    define_method(name) { instance_variable_get("@#{name}") }
  end
end

class Person
  aa :name
end

p = Person.new
p.name

#=> nil

p.name = "Rick Bob"
p.name

#=> "Rick Bob"
