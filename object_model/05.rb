class Guy
  def name
    "Jack Daniels"
  end
end

jack = Guy.new

def jack.sip
  puts "Mmm, breakfast of champions."
end

# metaclass is invisible
puts jack.class

# but class << is special syntax to get to the metaclass
class << jack
  self
end

# metaclass = class << jack; self; end
# puts metaclass.instance_methods.grep(/sip/).inspect
 
fred = Guy.new
metaclass = class << fred; self; end
puts metaclass.instance_methods.grep(/sip/).inspect