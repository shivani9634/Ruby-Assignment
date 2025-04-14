# Write a program to find IP address class

def ipClass(ip)
  octets = ip.split('.').map(&:to_i)
  if octets.length == 4 && octets.all? { |octet| octet.between?(0, 255) }
    case octets[0]
    when 0..127
      return "Class A"
    when 128..191
      return "Class B"
    when 192..223
      return "Class C"
    when 224..239
      return "Class D (Multicast)"
    when 240..255
      return "Class E (Reserved)"
    else
      return "Invalid IP address"
    end
  else
    return "Invalid IP address"
  end
end

puts ipClass("256.168.1.0")

