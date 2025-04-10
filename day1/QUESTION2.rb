def grade(marks)
  if(marks < 0 and marks <= 5)
    return "Elementary"
  elsif(marks >=6 and marks <= 8)
    return "Middle School"
  elsif(marks >=9 and marks <= 12)
    return "High School"
  else
    return "College"
  end
end

puts grade(45)
