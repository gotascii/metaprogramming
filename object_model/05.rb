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
metaclass = class << matz; self; end
metaclass.instance_methods.grep(/speak/) #=> ["speak"]