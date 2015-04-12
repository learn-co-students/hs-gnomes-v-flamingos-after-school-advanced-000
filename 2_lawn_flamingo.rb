##create your LawnFlamingo class here
class LawnFlamingo
  attr_accessor :name
  attr_accessor :weapon
  attr_accessor :angry
  def initialize
    @angry = false
  end
  def taunt(gnome)
    gnome.angry = true
    puts "Your mother was a hamster and your father smelled of elderberries!"
  end
  def attack
    puts "Flamingos attack!!!"
  end
end
