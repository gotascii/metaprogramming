class Animal
  def self.say(msg)
    puts msg
  end
end

class Person < Animal
  say "hello"
end
