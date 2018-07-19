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

def buy_fish
end
def buy_cat
end
def buy_dog
end
def walk_dog
end
def play_with_cats
end
def feed_fish
end
def sell_pets
end
def list_pets
end 
 
end