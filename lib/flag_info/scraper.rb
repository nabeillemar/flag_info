class FlagInfo::Scraper 


require 'nokogiri'
require 'open-uri'
require 'pry'


def self.scrape_country
  site = "https://flagpedia.net/index"  
  doc = Nokogiri::HTML(open(site))
  
  country = doc.css("ul.flag-grid").first.css("span")
  
  country.each do |c|
    name = c.text
    FlagInfo::Country.new(name)
end
end 

def self.scrape_link
  
end 

end 






=begin

## Replace this with the site you want to try scraping. 
## Make sure it's a string.
site = "https://flagpedia.net/index"

## When you first edit this file, the page will refresh - don't worry, that's normal and it's just making you your very own copy of the ScraperChecker.

## Now we're asking Nokogiri to go out and get the page data and store it in a variable called doc. Feel free to rename the variable to `page`, `data` or even `giraffe` but remember that descriptive variables are a developers best friend. 
doc = Nokogiri::HTML(open(site))
binding.pry

puts doc
# doc.css("ul.flag-grid").first
# Name_of_Country = doc.css("ul.flag-grid").first.css("span").first.text 
# Link to page = doc.css("ul.flag-grid a").first.attributes["href"].value

# if the result is an empty array [], the content you want is probably being loaded with javascript. Once you are sure you are getting data, comment out `puts doc` as it's probably going to return you a big mess (that's a good thing!)

# Now let's start looking at this `doc`. 
# Highlight the next section and uncomment it with `command` + `/` on Mac or `ctrl` + `/` on Windows/Linux

## ***********
## SECTION ONE

# # We want to get ourselves a collection of the items we're interested in.
# # eg. I want a collection of Menu Items.
# # We need to point our doc to the parent element and then tell it which of it's children we are interested in. We can put all that in one `.css` query:
# things = doc.css("parent#some-id children.some-class")
# # Enter a selector that you know you want to use in your scrape - i.e. div#main-content or article.news__card 

# puts things.count
# # If this gives you an unexpected number, your selector may not be specific enough (higher count than expected) - or perhaps it's too specific (lower count than expected)?
# # Once you've got a number that makes some sense, and you have a collection of `things`, we can iterate over them. Time to uncomment the second section!

## ***********
## SECTION TWO

# puts things.first
# # It's useful as reference to see exactly what one of your `things` looks like, so let's print out the first and make sure it's what you expect. If it's still very large, you may find it easier to just look at it in the original html in dev tools.

# # See if you can find the data you will want to show your user
# things.each do |thing|
#   detail_one = thing.css("css-query").text
#   detail_two = thing.css("css-query").attr("href")
#   detail_three = thing.css("css-query").text.strip
#   # For testing purposes we can print it straight to our console
#   # But in our real app we'll want to make a new object with the data eg:
#   # Thing.new(detail_one, detail_two, detail_three)
#   puts detail_one, detail_two, detail_three, ""
# end

## ***********

 "Finished running code"
# This line stops us seeing the sometimes very long return values of Nokogiri. Feel free to uncomment it if you don't want it.

end 

=end