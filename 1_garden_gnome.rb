##create your GardenGnome class here
class GardenGnome
  attr_accessor :name
  attr_accessor :weapon
  attr_accessor :angry
  def initialize
    @angry = false
  end
  def taunt(flamingo)
    flamingo.angry = true
    puts "I fart in your general direction!"
  end
  def attack
    puts "Garden gnomes attack!!!"
  end
end
