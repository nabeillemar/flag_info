class FlagInfo::CLI 
  def call
    puts "Welcome to Facts of the World"
     get_list_of_countries
     get_user_country
    # Method: get_user_country 
    # Method: get_facts_for(country) 
    # Method: lists_facts
    # Method: IDK but should I do like List list all countries, user choose country, give the user a selection of different attributes the user selects then it gives the information 
   binding.pry
  end 
  
  def get_list_of_countries #going to get the list of countries from the scraper class
    # To be scraped instead 
    @country = ["Afghanistan", "Algeria", "Albania", "Angola"] #adding the @country to an array, @country is available throughout the instances 
  end 
  
  def get_user_country
    #list the countries, telling the options, 
    @country.each do |country| 
    puts "#{country}" 
  end 
  end 
end 