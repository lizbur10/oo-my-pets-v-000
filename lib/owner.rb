class Owner
  attr_reader :species
  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    count == self.all.size 
  end

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: [] }
    @@all << self
  end

end
