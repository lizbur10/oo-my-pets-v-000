class Owner
  attr_reader :species
  @@all = []

  def self.all
    @@all
  end

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: [] }
    self << @@all
  end



end
