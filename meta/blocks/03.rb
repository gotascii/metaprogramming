say = lambda { |msg| puts msg }

say.call("hi")

b = lambda {|name, msg| puts "#{name} said #{msg}"}

b.call('Rick', 'Hi')
b.call('Joe', 'Hi!')
b.call('Rick', 'Bye Bye')
b.call('Joe', 'Bye Bye!')
