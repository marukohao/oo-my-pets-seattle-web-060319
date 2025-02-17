class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@owner = []
  def initialize(pets = {fishes: [], cats: [], dogs: []}, species)
    @species = species
    @pets = pets
    @@owner << self
  end
  def self.all
    @@owner
  end

  def self.count
    @@owner.length
  end

  def self.reset_all
    @@owner = []
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |pet, name|
      name.each do |eachanimal|
        eachanimal.mood = "nervous"
      end
      @pets[pet] = []
    end
  end

  def list_pets 
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end