class FlagInfo::CLI 
  def call
    puts "\nWelcome to Flags of the World\n"
     get_countries # get the list if countries from the scraper class 
     list_countries # tells the user the countries
     get_user_country # gets the input of the user
    # Method: get_facts_for(country) 
    # Method: lists_facts
    # Method: IDK but should I do like List list all countries, user choose country, give the user a selection of different attributes the user selects then it gives the information 
  # binding.pry
  end 
  
  def get_countries #going to get the list of countries from the scraper class, this is in the background 
  @country = FlagInfo::Country.all # adding all the countries that we scrapped from the website into an array called @country 
  
    # To be scraped instead 
    #@country = ["Afghanistan", "Algeria", "Albania", "Angola"] #adding the @country to an array, @country is available throughout the instances 
  end 
  
  def list_countries 
    #list the countries, telling the options,
    puts "Choose a country to learn something new!" #asks this 
    @country.each.with_index(1) do |country, index| #gives each country a number an index 
    puts "#{index}. #{country.name}" #puts out the index with the country name 
  end 
   
  
  def get_user_country #getting and evaluating the response of the user 
    chosen_country = gets.strip.to_i #creating a new variable called chosen_country and assigning it to the user's input and changing it to an interger 
    if valid_input(chosen_country, @country) # #saying if the user's input is less than or equal to the countries index maxium length which is 254 or anything greater than 0 it will shows the facts for the country 
     return show_facts_for(chosen_country) #
   else 
      puts "Sorry that is not a valid input, please add the correct number of the country you want to learn more about." #if not it will ask you this question 
    end 
  end 
  #NEED TO ADD A LOOP HERE ------------------ LOOP HERE 
  end 
    
  def valid_input(input, data) # input would be the user input and data would be @country
    input.to_i <= data.length && input.to_i > 0 #saying the user's input is less than or equal to the countries index maxium length which is 254 or anything less than 0 
  end 
  
  def show_facts_for(chosen_country)
    country = @country[chosen_country] #- 1] #it is minus 1 because the index starts at 0 but what is put out to the user starts at 1 because when we defined the list_countries method we said start at 1 so country varaible now equals the correct country 
    country.get_facts #this calls the get_facts method from the country.rb file 
    #binding.pry
    puts "Here are facts for #{country.name}" #adding the attribute 
    puts "The offical name is #{country.offical_name}" #adding the attrubute 
    if !country.flag_summary.empty? #if the summary is emopty it puts out something 
    puts "Here is information about the flag 
    #{country.flag_summary}"
  else 
    puts "Sorry there is no information about the flag yet."
    #binding.pry
    #FlagInfo::Fact.all.each.with_index(1) do |event|
    #puts event.name 
    #end
    #get_user_event
  end 
end
  
  
end 