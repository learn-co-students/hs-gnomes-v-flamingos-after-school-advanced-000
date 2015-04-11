require_relative './spec_helper'

describe "Lawn Flamingo" do

  before do
    @test_flamingo_2 = LawnFlamingo.new
    @test_gnome_2 = GardenGnome.new
  end

  it "can create individual instances of the lawn flamingo" do
    expect(@test_flamingo_2).to be_an_instance_of(LawnFlamingo)
  end

  it "has a name attribute" do
    @test_flamingo_2.name = "Freddy the Furious"
    expect(@test_flamingo_2.name).to eq("Freddy the Furious")
  end

  it "has a weapon attribute" do
    @test_flamingo_2.weapon = "sling shot"
    expect(@test_flamingo_2.age).to eq("sling shot")
  end

  it "initializes without anger" do
    expect(@test_flamingo_2.angry).to eq(false)
  end

  it "can taunt the garden gnomes" do
    output = capture_stdout { @test_flamingo_2.taunt(@test_gnome_2) }
    expect(output).to eq("Your mother was a hamster and father smelled of elderberries!\n")
  end

  it "gets angry when it is taunted" do
    output = capture_stdout { @test_gnome_2.taunt(@test_flamingo_2) }
    expect(output).to eq("How dare you, sir!\n")
    expect(@test_flamingo_2.angry).to eq(true)
  end

  it "can attack" do
    output = capture_stdout { @test_flamingo_2.attack }
    expect(output).to eq("Flamingos attack!!!\n")
  end
end
