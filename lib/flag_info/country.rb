class FlagInfo::Country
  @@all = []
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    save
  end
  
  def self.all
    FlagInfo::Scraper.scrape_country if @@all.empty?
    @@all 
  end 
  
  def save
    @@all << self 
  end 
  
  
end 