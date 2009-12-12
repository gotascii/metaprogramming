class Guy
  def name
    "Jack Daniels"
  end
end

jack = Guy.new

def jack.sip
  puts "Mmm, breakfast of champions."
end

jack.sip

fred = Guy.new
fred.sip