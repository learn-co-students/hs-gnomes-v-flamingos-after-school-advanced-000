##create your Battle class here
class Battle

  attr_reader :gnome_army, :flamingo_army

  def initialize
    @gnome_army=[]
    @flamingo_army=[]
  end

  def add_gnome
    @gnome_army<<GardenGnome.new
  end

  def add_flamingo
    @flamingo_army<<LawnFlamingo.new
  end
  
  def all_gnomes_angry?
    @gnome_army.each do |gnome|
      if !gnome.angry
        return false
      end
    end
    true
  end

  def all_flamingos_angry?
    @flamingo_army.each do |flamingo|
      if !flamingo.angry
        return false
      end
    end
    true
  end

  def gnome_attack
    if all_gnomes_angry?
      @gnome_army.each do |gnome|
        gnome.attack
      end
    else
      puts "Garden gnomes are getting angry..."
    end
  end

  def flamingo_attack
    if all_flamingos_angry?
      @flamingo_army.each do |flamingo|
        flamingo.attack
      end
    else
      puts "Lawn flamingos are getting angry..."
    end
  end
  
end