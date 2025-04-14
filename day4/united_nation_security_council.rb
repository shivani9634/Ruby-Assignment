# Whether the country can have a seat in the UN (United Nations) Security council.

module UnitedNationSecurityCouncil
  def self.security_council_elgibility(country)
    if country.status =="developed" && country.army_strength > 70000
      puts "#{country.name} secured the seat in the United Nation Security Council"
    else 
      puts "#{country.name} not able to secure the seat in the United Nation Security Council"  
    end
  end
end