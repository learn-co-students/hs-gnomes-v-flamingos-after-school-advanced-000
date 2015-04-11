require_relative './spec_helper'

describe "Garden Gnome" do

  before do
    @test_gnome = GardenGnome.new
    @test_flamingo = LawnFlamingo.new
  end

  it "can create individual instances of the garden gnome" do
    expect(@test_gnome).to be_an_instance_of(GardenGnome)
  end

  it "has a name attribute" do
    @test_gnome.name = "Boris the Brave"
    expect(@test_gnome.name).to eq("Boris the Brave")
  end

  it "has a weapon attribute" do
    @test_gnome.weapon = "bazooka"
    expect(@test_gnome.weapon).to eq("bazooka")
  end

  it "initializes without anger" do
    expect(@test_gnome.angry).to eq(false)
  end

  it "can taunt the flamingos" do
    output = capture_stdout { @test_gnome.taunt(@test_flamingo) }
    expect(output).to eq("I fart in your general direction!\n")
  end

  it "gets angry when it is taunted" do
    @test_flamingo.taunt(@test_gnome)
    expect(@test_gnome.angry).to eq(true)
  end

  it "can attack" do
    output = capture_stdout { @test_gnome.attack }
    expect(output).to eq("Garden gnomes attack!!!\n")
  end
end
