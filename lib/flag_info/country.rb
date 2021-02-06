class FlagInfo::Country
  @@all = []
  attr_accessor :name, :facts
  
  def initialize(name)
    @name = name 
    @facts = []
    save
  end
  
  def self.all
    FlagInfo::Scraper.scrape_country if @@all.empty?
    @@all 
  end 
  
  def save
    @@all << self 
  end 
  
  def facts
  FlagInfo::Scraper.scrape_facts(self) if @facts.empty?
    @facts
  end 
  
  
end 