# WAP for students to print their school level according to grade
#e.g -
#if grade is between 1-5 return elementary
#if grade is between 6-8 return middle school
#if grade is between 9-12 return high school
#if grade is between otherwise return college

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
