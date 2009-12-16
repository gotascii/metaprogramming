def converse
  puts "hello"
  yield
  puts "bye"
end

converse do
  puts "how are you?"
end
