class FlagInfo::CLI 
  def call
    puts "Welcome to Facts of the World"
     get_countries
     list_countries
     get_user_country 
    # Method: get_facts_for(country) 
    # Method: lists_facts
    # Method: IDK but should I do like List list all countries, user choose country, give the user a selection of different attributes the user selects then it gives the information 
  # binding.pry
  end 
  
  def get_countries #going to get the list of countries from the scraper class
  FlagInfo::Country.new("Afghanistan")
  FlagInfo::Country.new("Albania")
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
    show_facts_for(chosen_country) if valid_input(chosen_country, @country)
    end 
  end 
    
  def valid_input(input, data) # input would be the user input and data would be @country
    input.to_i <= data.length && input.to_i > 0 
  end 
  
  def show_facts_for(chosen_country)
    country = @country[chosen_country - 1]
    puts "Here are facts for #{country}"
    #binding.pry
    #FlagInfo::Fact.all.each.with_index(1) do |event|
    #puts event.name 
    #end
    #get_user_event
  end 
  
  
end 