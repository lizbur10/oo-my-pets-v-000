require 'pry'
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
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].map { | dog | dog.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].map { | cat | cat.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].map { | fish | fish.mood = "happy" }
  end

  def sell_pets
    self.pets.each do | pet_types |
      pet_types.each do | pet_type, pets |
        pets.each { | pet | pet.mood = "nervous" }
    end
    binding.pry
  end
end
