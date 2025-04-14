# Regex for mobile number, email address, name, gender(M / F) and  amount

def mobileNumber(number)
  if(number.match(/^\+91?\d{10}$/))
    return "Mobile Number is Correct"
  else
    return "Mobile Number is incorrect"  
  end
end

def emailAddress(email)
  if(email.match(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$/))
    return "Valid Email Address"
  else
    return "Invalid Email Address"  
  end
end

def name(name)
  if(name.match(/^[a-zA-Z\s]+$/))
    return "Verified Name"
  else
    return "Invalid Name"
  end
end

def gender(gender)
  if(gender.match(/^[MF]$/))
    return "Gender is Valid"
  else
    return "Invalid Gender"  
  end
end

def amount(amount)
  if(amount.match(/^([₹$])?\d{1,3}(?:,\d{1,})*$/))
    return "Entered amount is valid"
  else
    return "Not a Valid Amount"  
  end
end

puts mobileNumber("+917668147050")
puts emailAddress("shivani.poonia@joshsoftware.com")
puts name("shivani")
puts gender("F")
puts amount("₹6,000")
print amount("$600")
