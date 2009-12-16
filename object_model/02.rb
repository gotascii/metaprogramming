class Guy
  def name
    puts self.inspect
    "Jack Daniels"
  end
end

jack = Guy.new

puts self.inspect

# "Go to the right."
puts jack.name

puts self.inspect