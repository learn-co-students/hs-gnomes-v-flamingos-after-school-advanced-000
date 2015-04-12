##create your GardenGnome class here

class GardenGnome
  attr_accessor :name, :weapon, :angry

  def initialize
    @angry=false
  end

  def taunt(flamingo)
    puts "I fart in your general direction!"
    flamingo.angry=true
  end

  def attack
    puts "Garden gnomes attack!!!"
  end
  
  
end