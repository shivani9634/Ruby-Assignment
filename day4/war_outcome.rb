# Whether the country can win the war or not

module WarOutcome
  def self.war_outcome(country)
    if country.army_strength > 5000 && country.military_equipments > 10000 && country.status == "developed"
      puts "#{country.name} is more likely to win the war. "
    elsif country.army_strength < 5000 && country.military_equipments < 10000 && country.status == "developing"
      puts "#{country.name} is less likely to win the war "
    else
      puts "#{country.name} not have sufficient resources to win the war. "
    end
  end
end