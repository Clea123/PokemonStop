=begin

Pokemon
  individual examples / clones
  abilities
  stats (attack, defense, health)
  types
Player
Items
Locations

=end


class Pokemon
  attr_reader :name, :health, :attack, :maxhealth, :defense, :speed, :status
  attr_writer :status, :health

  def initialize(name="Pikachu")
    @name = name
    @health = 10
    @maxhealth = 10
    @attack = rand(8..12)
    @defense = rand(8..12)
    @speed = rand(8..12)
    @status = "alive"
    puts "#{@name} has been created. It has #{@attack} attack, it has #{@defense} defense, and it has #{@speed} speed."
  end

  def fight(opponent)
    bonus = rand(-1..4)
    damage = ( self.attack + bonus ) - opponent.defense
    opponent.health = opponent.health - damage
    puts "#{self.name} attacked #{opponent.name} and did #{damage} damage."
    gets.chomp
    puts "#{opponent.name} has #{opponent.health} health left."
    gets.chomp
  end
end


poke1 = Pokemon.new
poke2 = Pokemon.new("Rhydon")
poke3 = Pokemon.new("Squirtle")

10.times do
  poke2.fight(poke3)
  poke3.fight(poke2)
end
