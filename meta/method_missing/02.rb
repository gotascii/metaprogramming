class Person
  def method_missing(method_id, *args)
    puts "You tried to call #{method_id.to_s} with #{args.join(', ')} on an instance of #{self.class.name}"
  end
end

p = Person.new
p.get_crazy("O", "M", "G")