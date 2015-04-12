##create your LawnFlamingo class here

class LawnFlamingo

  attr_accessor :name, :weapon, :angry

  def initialize
    @angry=false
  end

  def taunt(gnome)
    puts "Your mother was a hamster and your father smelled of elderberries!"
    gnome.angry=true
  end

  def attack
    puts "Flamingos attack!!!"
  end
  
  
end