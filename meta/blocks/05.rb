block = lambda { puts "how are you?" }

def converse
  puts "hello"
  yield
  puts "bye"
end

converse &block
