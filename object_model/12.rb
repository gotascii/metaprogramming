module Mana
  def tap
    puts "tapped!"
  end
end

class Land
  self.extend Mana
  # self -> Land
end

Land.tap

swamp = Object.new
swamp.extend Mana
swamp.tap