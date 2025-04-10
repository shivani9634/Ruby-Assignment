def mobileNumber(number)
  if(number.match(/^\+91?\d{10}$/))
    return "Mobile Number is Correct"
  end
end

def emailAddress(email)
  if(email.match(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$/))
    return "Valid Email Address"
  end
end

def name(name)
  if(name.match(/^[a-zA-Z\s]+$/))
    return "Verified Name"
  end
end

def gender(gender)
  if(gender.match(/^[MF]$/))
    return "Done"
  end
end

def amount(amount)
  if(amount.match(/^₹?\d{1,3}(?:,\d{3})*(?:\.\d{2})?$/))
    puts "Done"
  else
    puts "Not Valid"  
  end
end

puts mobileNumber("7668147050")
puts emailAddress("shivani.poonia@joshsoftware.com")
puts name("shivani")
puts gender("F")
puts amount("₹9,00,000")
