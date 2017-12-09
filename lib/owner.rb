class Owner
  attr_reader :species
  @@all = []
  @@owner_count = 0

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@count
  end

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: [] }
    @@all << self
    @@count += 1
  end



end
