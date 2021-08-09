class FlagInfo::Country
  @@all = []
  attr_accessor :name, :ref, :offical_name, :flag_summary #these are all the attributes we want to get from scrapping our website for each country, each country should have these
  
  def initialize(name, ref) # it initalizes with a name and a ref, ref is the reference name that the website gave, we need the reference attribute so we can go inside the website page 
    @name = name 
    @ref = ref
    #binding.pry
    save
  end
  
  def self.all #to call all instances of the country class  
    FlagInfo::Scraper.scrape_country if @@all.empty? #<---------do I need this code?   #gets info from scraper.rb file, this authorizes the scrape data method in Scraper.rb 
    @@all #this just calls the array @@all, because in the initalize for each new instance we get a name, ref and then saves it, the save method already shoves itself into the @@all, but that is all it does 
    #binding.pry
  end 
  
  def save #we use this to save an intialization into @@all we shove an instance of this module into @all 
    @@all << self 
    #binding.pry
  end 
  
  def get_facts #this generates the data to be scraped from Scraper.rb the scrape_facts method gets all the attributes and connects it to the country then adds it to the @@all, this gets connected to self because it is within the module next method in line
  FlagInfo::Scraper.scrape_facts(self) #this scrapes the data of the chosen country only
  #binding.pry
  end 
  
  
end 