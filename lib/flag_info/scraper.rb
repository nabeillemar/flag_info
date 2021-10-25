class FlagInfo::Scraper 


require 'nokogiri'
require 'open-uri'
require 'pry'


def self.scrape_country #name of method 
  site = "https://flagpedia.net/index"  #the site
  doc = Nokogiri::HTML(open(site)) #have to put this 
  
  country = doc.css("ul.flag-grid a") #locate it within chrome inspect
  #ref = doc.css("ul.flag-grid a").attributes["href"]
  
  country.each do |c| # looks into each array and takes out the name and ref and seperates it anf attaches it to a new varaible 
    name = c.css("span").text
    ref = c.attributes["href"].value
    FlagInfo::Country.new(name, ref) # spits out a new instance of the country 
    #binding.pry
end
end

def self.scrape_facts(country)
  url = "https://flagpedia.net#{country.ref}" #use the website with the ref attribute to go to the country page 
  doc = Nokogiri::HTML(open(url))
  country.flag_summary = doc.css("p").text.strip #using the flag_summary attribute we can use this because it is within the module of FlagInfo 
  country.offical_name = doc.css("table tbody tr")[2].css("td").text.strip # using the offical name attribute 

  end 
end

