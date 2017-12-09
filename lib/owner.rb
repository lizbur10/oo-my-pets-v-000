class Owner
  attr_accessor :all
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: [] }
    self << @@all
  end



end
