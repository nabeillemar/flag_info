class FlagInfo::Facts
  @@all = []
  attr_accessor :offical_name, :country
  
  def initialize(offical_name, country)
    @offical_name = offical_name 
    @country = country 
    add_to_country
    save
  end
  
  def save
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  def add_to_country
    binding..pry
    @country.facts << self unless @country.facts.include?(self)
  end 
  
end 

  
  