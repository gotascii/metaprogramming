module Mana
  def self.included(base)
    base.extend ClassMethods
  end

  def tap
    puts "tapped!"
  end

  module ClassMethods
    def class_method
      puts "a class method on #{name}"
    end
  end
end

class Land
  include Mana
end

swamp = Land.new
swamp.tap

Land.class_method