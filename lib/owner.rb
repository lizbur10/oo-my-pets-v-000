class Owner
  attr_reader :species
  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: [] }
    @@all << self
  end



end
