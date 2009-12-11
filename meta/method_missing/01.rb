# method_missing

class Person; end
p = Person.new
p.name
#=> undefined method `name' for #<Person:0x1001568e0> (NoMethodError)

# method lookup: ruby goes into p's class and browses it's instance methods.  since it can't find
# it there, ruby goes up the ancestrial chain into Object and finally Kernal.  if it still cannot
# find the method, ruby will raise an undefined method exception.

# there is an instance method on Kernel named method_missing, this is the last thing Ruby checks 
# before raising an exception.  if we overwrite this method in the Person class, we can intercept 
# Ruby while it's doing it's method lookup.

class Person
  def method_missing(method_id, *args)
    puts "You tried to call #{method_id.to_s} with #{args.join(', ')} on an instance of #{self.class.name}"
  end
end

# ActiveRecord uses method_missing to intercept find_by_* and find_all_by_* calls.  In order to
# reduce the cost of these expensive method missing calls, AR will dynamically define the find_by
# method after the first time it's called.

# simplified example:

module ActiveRecord
  class Base
    def method_missing(method_id, *args, &block)
      case method_id
      when /^find_all_by_([_a-zA-Z]\w*)$/
        define_method(method_id) do
          find(:all, :conditions => ..extracted from args..)
        end
      when /^find_by_([_a-zA-Z]\w*)$/
        define_method(method_id) do
          find(:first, :conditions => ..extracted from args..)
        end
      end
    end
  end
end
