class FlagInfo::Country
  @@all = []
  attr_accessor :name, :ref, :offical_name, :flag_summary
  
  def initialize(name, ref)
    @name = name 
    @ref = ref
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
  FlagInfo::Scraper.scrape_facts(self)
  #binding.pry
  end 
  
  
end 