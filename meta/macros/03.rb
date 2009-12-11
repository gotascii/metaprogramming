module Speech
  def say(msg)
    puts msg
  end
end

class Person
  extend Speech
  say "hello"
end
