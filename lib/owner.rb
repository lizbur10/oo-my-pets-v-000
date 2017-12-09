class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: [] }
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    count = @@all.size
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    Fish.new(name)
    self.pets[fishes] += 1
  end
end
