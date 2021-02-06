class FlagInfo::Country
  @@all = []
  attr_accessor :name, :ref, :facts
  
  def initialize(name, ref)
    @name = name 
    @ref = ref
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
  
  def get_facts
  FlagInfo::Scraper.scrape_facts(self) if @facts.empty?
  end 
  
  
end 