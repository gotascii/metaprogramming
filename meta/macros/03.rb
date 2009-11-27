module Speech
  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    def say(msg)
      puts msg
    end
  end 
end

class Person
  include Speech
  say "hello"
end

Person.new
