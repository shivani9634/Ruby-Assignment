#Assignment - 
#An application for handling data of as many countries as we can. Example of what data that we can have:
#Population
#GDP(Gross Domestic Production)
#States
#Army Strength
#State of country(developing, developed)
#Etc.
#On the basis of all these data we will be building modules to conceive various outputs like:
#Whether that country will get a loan from the IMF (International Monetary Fund) or WB (World bank).
#Whether the country can have a seat in the UN (United Nations) Security council.
#Whether the country can win the war or not

require_relative 'loan_eligibility.rb'
require_relative 'united_nation_security_council.rb'
require_relative 'war_outcome.rb'

class Country

  include LoanEligibility
  include UnitedNationSecurityCouncil
  include WarOutcome

  #getter setter
  attr_accessor :name, :population, :gdp, :army_strength, :military_equipments, :status

  #initialize (constructor)
  def initialize(name, population, gdp, army_strength, military_equipments, status)
    @name = name
    @population = population
    @gdp = gdp
    @army_strength = army_strength
    @military_equipments = military_equipments
    @status= status
  end

  def country_information
    puts "Country : #{@name}"
    puts "Population of the Country : #{@population}"
    puts "GDP of the Country : #{@gdp}"
    puts "Military Strength : #{@army_strength}"
    puts "Military Equipments : #{military_equipments}"
    puts "Develpoment of Country : #{@status}"
  end
end

puts "Enter the name of the Country : "
name = gets.chomp()

puts "Enter the country population : "
population = gets.to_i()

puts "Enter the GDP of the Country (in Billions) : "
gdp = gets.to_f()

puts "Enter the number of military officers in the Country : "
army_strength = gets.to_i()

puts "Enter the number of military equipments in the Country : "
military_equipments = gets.to_i

puts "Enter the status of development of the Country (developing, developed or under developed): "
status = gets.chomp()

country = Country.new(name, population, gdp, army_strength, military_equipments, status) #object creation 

country.country_information

puts "Loan Eligibility Of Country : "
 LoanEligibility.loan_eligibility_of_country(country)

puts "Seat in the UN Security COuncil : "
 UnitedNationSecurityCouncil.security_council_elgibility(country)

puts "World War Win or Not : "
 WarOutcome.war_outcome(country)


