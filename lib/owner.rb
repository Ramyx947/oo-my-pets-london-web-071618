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
 
end