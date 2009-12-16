# defined?(Mana) ? Mana : Module.new

module Mana
  def tap
    puts "tapped!"
  end

  def self.module_method
  end
end

# Mana.new

# class Land < Mana
# end

# it is an instance like any other ruby object
def Mana.module_method
  puts "weird"
end

Mana.module_method

module Mana
  def self.another_module_method
    puts "strange"
  end
end

Mana.another_module_method