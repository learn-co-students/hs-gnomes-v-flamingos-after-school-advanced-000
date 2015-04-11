##create your Battle class here

class Battle
  attr_accessor :gnome_army, :flamingo_army

  def initialize
    @gnome_army = []
    @flamingo_army = []
  end

  def add_gnome
    @gnome_army << GardenGnome.new
  end

  def add_flamingo
    @flamingo_army << LawnFlamingo.new
  end

  def all_gnomes_angry?
    @gnome_army.each { |gnome| puts gnome }
    @gnome_army.all? { |gnome| gnome.angry }
  end

  def gnome_attack
    if all_gnomes_angry?
      @gnome_army.each { |gnome| gnome.attack }
    else
      puts "Garden gnomes are getting angry..."
    end
  end
end
