# Whether that country will get a loan from the IMF (International Monetary Fund) or WB (World bank).
module LoanEligibility
  def self.loan_eligibility_of_country(country)
    if country.gdp > 100 && country.status == "developed"
      puts "#{country.name} is eligible for loan from World Bank "
    elsif country.gdp < 100 && country.status == "developing"
      puts " #{country.name} is eligible for loan from International Monetary Fund "
    elsif country.gdp < 50 && country.status == "under developed"
      puts " #{country.name} is not eligible for loan "
    else
      puts "Entered GDP is not a valid amount"  
    end
  end
end