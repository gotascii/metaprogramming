# class Person
#   def method_missing(method_id, *args)
#     puts "You tried to call #{method_id} with 
#       #{args.join(', ')} on an instance of #{self.class.name}"
#   end
# end
# 
# p = Person.new
# p.get_crazy("O", "M", "G")

# name, age

class Person < ActiveRecord::Base
  
end

p = Person.find_by_name_and_age("matt", 28)