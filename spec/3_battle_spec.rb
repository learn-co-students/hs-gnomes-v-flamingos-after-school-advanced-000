require_relative './spec_helper'

describe "Battle" do

  before do
    @battle = Battle.new
  end

  it "can create individual instances of a battle" do
    expect(@battle).to be_an_instance_of(Battle)
  end

  it "initializes with an empty gnome army" do
    expect(@battle.gnome_army).to eq([])
  end

  it "initializes with an empty flamingo army" do
    expect(@battle.flamingo_army).to eq([])
  end

  describe "#add_gnome" do
    it "can create new garden gnomes and add them to the gnome army" do
      @battle.add_gnome
      @battle.add_gnome
      expect(@battle.gnome_army.length).to eq(2)
    end
  end

  describe "#add_flamingo" do
    it "can create new lawn flamingos and add them to the flamingo army" do
      @battle.add_flamingo
      @battle.add_flamingo
      expect(@battle.flamingo_army.length).to eq(2)
    end
  end

  describe "#gnome_attack" do
    before do
      @battle.add_flamingo
      @battle.add_gnome
      @battle.add_gnome
      @flamingo = @battle.flamingo_army.first
      @gnome1 = @battle.gnome_army.first
      @gnome2 = @battle.gnome_army.last
    end

    it "knows if all the gnomes are angry" do
      @flamingo.taunt(@gnome1)
      @flamingo.taunt(@gnome2)
      expect(@battle.all_gnomes_angry?).to eq(true)
    end

    it "can send a warning if not all the gnomes are angry yet" do
      @flamingo.taunt(@gnome1)
      output = capture_stdout { @battle.gnome_attack }
      expect(output).to eq("Garden gnomes are getting angry...\n")
    end

    it "can make the garden gnomes attack if they are all angry" do
      @flamingo.taunt(@gnome1)
      @flamingo.taunt(@gnome2)
      @battle.gnome_attack
      output = capture_stdout { @battle.gnome_attack }
      expect(output).to eq("Garden gnomes attack!!!\nGarden gnomes attack!!!\n")
    end
  end

  describe "#flamingo_attack" do
    before do
      @battle.add_gnome
      @battle.add_flamingo
      @battle.add_flamingo
      @gnome = @battle.gnome_army.first
      @flamingo1 = @battle.flamingo_army.first
      @flamingo2 = @battle.flamingo_army.last
    end

    it "knows if all the flamingos gnomes are angry" do
      @gnome.taunt(@flamingo1)
      expect(@battle.all_flamingos_angry?).to eq(false)
    end

    it "can send a warning if not all the flamingos are angry yet" do
      @gnome.taunt(@flamingo1)
      output = capture_stdout { @battle.flamingo_attack }
      expect(output).to eq("Lawn flamingos are getting angry...\n")
    end

    it "can make the flamingos attack if they are all angry" do
      @gnome.taunt(@flamingo1)
      @gnome.taunt(@flamingo2)
      @battle.flamingo_attack
      output = capture_stdout { @battle.flamingo_attack }
      expect(output).to eq("Flamingos attack!!!\nFlamingos attack!!!\n")
    end
  end
end
