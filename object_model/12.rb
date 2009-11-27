module Mana
  def tap
    puts "tapped!"
  end
end

class Land
  extend Mana
end

Land.tap

swamp = Object.new
swamp.extend Mana
swamp.tap