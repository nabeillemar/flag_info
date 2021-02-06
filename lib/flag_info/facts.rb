class FlagInfo::Facts
  @@all = []
  attr_accessor :name, :flag_summary
  
  def initialize(name)
    @name = name
    @flag_summary = flag_summary
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

  
  