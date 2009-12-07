module Mana
  def tap
    puts "tapped!"
  end
end

class Land
  include Mana
end

swamp = Land.new
swamp.tap