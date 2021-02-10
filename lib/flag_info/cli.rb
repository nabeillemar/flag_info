class FlagInfo::CLI 
  def call
    puts "\nWelcome to Facts of the World\n"
     get_countries
     list_countries
     get_user_country 
    # Method: get_facts_for(country) 
    # Method: lists_facts
    # Method: IDK but should I do like List list all countries, user choose country, give the user a selection of different attributes the user selects then it gives the information 
  # binding.pry
  end 
  
  def get_countries #going to get the list of countries from the scraper class
  @country = FlagInfo::Country.all
  
    # To be scraped instead 
    #@country = ["Afghanistan", "Algeria", "Albania", "Angola"] #adding the @country to an array, @country is available throughout the instances 
  end 
  
  def list_countries
    #list the countries, telling the options,
    puts "Choose a month to see events."
    @country.each.with_index(1) do |country, index| 
    puts "#{index}. #{country.name}" 
  end 
   
  
  def get_user_country
    chosen_country = gets.strip.to_i
    if valid_input(chosen_country, @country)
     return show_facts_for(chosen_country)
   else 
      puts "Sorry that is not a valid input, please add the correct number of the country you want to learn more about."
    end 
  end 
  end 
    
  def valid_input(input, data) # input would be the user input and data would be @country
    input.to_i <= data.length && input.to_i > 0 
  end 
  
  def show_facts_for(chosen_country)
    country = @country[chosen_country - 1]
    country.get_facts
    #binding.pry
    puts "Here are facts for #{country.name}"
    puts "The offical name is #{country.offical_name}"
    if !country.flag_summary.empty?
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