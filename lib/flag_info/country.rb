class FlagInfo::Country
  @@all = ["Afghanistan", "Algeria", "Albania", "Angola"]
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  
  def self.all
    @@all 
  end 
  
  
end 