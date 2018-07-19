class Owner
 
 attr_accessor :pets, :name
 attr_reader :species
 
 OWNERS = []
 
 
 def initialize(species)
   @species = species
   @pets = {fishes: [], cats: [], dogs: []}
   OWNERS << self
 end
 
def self.reset_all
  OWNERS.clear
end
 
def self.all
  OWNERS
end
 
def self.count
  OWNERS.length
end
def say_species
  return "I am a #{species}."
end 

def buy_fish(name)
  pets[:fishes]<< Fish.new(name)
end
def buy_cat(name)
  pets[:cats]<< Cat.new(name)
end
def buy_dog(name)
  pets[:dogs]<< Dog.new(name)
end
def walk_dogs
  pets[:dogs].each do |name|
    name.mood= "happy"
  end 
end
def play_with_cats
  pets[:cats].each do |name|
    name.mood= "happy"
  end 
end
def feed_fish
  pets[:fishes].each do |name|
    name.mood= "happy"
  end 
end
def sell_pets
  @pets.each do |k,v|
    v.each do |pet|
      pet.mood = "nervous"
    end 
  end 
  @pets = {}
end
def list_pets
end 
 
end