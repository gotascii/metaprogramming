module Mana
  def self.included(base)
    puts "Mana just got included in #{base.name}"
  end

  def self.extended(base)
    puts "Mana just extended #{base.name}"
  end

  def tap
    puts "tapped!"
  end
end

class Land
  include Mana # Mana.included(self) == Mana.included(Land)
end

class Creature
end

Creature.extend(Mana) # Mana.extended(self) == Mana.extended(Creature)