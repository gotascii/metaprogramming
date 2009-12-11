say { "hi" }

say do
  "hi"
end

# blocks are chunks of code between { } or do end
# blocks are like the body of code in an anonymous method

# blocks can take parameters just like methods, passed differently using | |

say { |msg| puts msg }

# parameter scope

msg = "hi"
[1, 2].each {|msg| puts msg}
puts msg

# output
#=> 1
#=> 2
#=> 2

# this changes in 1.9 ?

# iterators are methods that can invoke a block of code
# blocks passed to methods have scope rememered, then the method is entered

b = lambda { puts "how are you?" }

def converse
  puts "hello"
  yield
  puts "bye"
end

converse &b

# output

#=> hello
#=> how are you?
#=> bye

# arguments in lambdas
b = lambda {|name, msg| puts "#{name} said #{msg}"}

b.call('Rick', 'Hi')
b.call('Joe', 'Hi!')
b.call('Rick', 'Bye Bye')
b.call('Joe', 'Bye Bye!')

# Blocks - (they aren’t really “objects” but they are still “callable.”) 
#  evaluated in the scope in which they’re defined.
# Procs - objects of class Proc. Like blocks, they are evaluated in the 
#  scope where they’re defined.
# Lambdas — also objects of class Proc but subtly different from regular 
#  procs, they require the passing of the arguments they were defind with. 
#  They’re closures like blocks and procs, and as such they’re 
#  evaluated in the scope where they’re defined.
# Methods - bound to an object, they are evaluated in that object’s scope. 
#  They can also be unbound from their scope and rebound to the scope of another object.