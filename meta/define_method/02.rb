def attr_accessor(name)

  define_method(name) do
    instance_variable_get "@#{name}"
  end
  
  define_method("#{name}=") do |value|
    instance_variable_set "@#{name}", value 
  end
  
end
