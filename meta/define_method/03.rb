class Module
  def aa(name)
    define_method("#{name}=") { |value| instance_variable_set("@#{name}", value) }
    define_method(name) { instance_variable_get("@#{name}") }
  end
end

class Person
  aa :name
end

p = Person.new
puts p.name

p.name = "Rick Bob"
puts p.name