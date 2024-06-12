# signed_number.rb
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

SIGNS = '+-'

def string_to_integer(string)
  magnitude = string.size - 1
  new_array = []

  characters = string.chars

  characters.each do |character|
    new_array << (DIGITS[character] * (10**magnitude))
    magnitude -= 1
  end

  new_array.sum
end

def string_to_signed_integer(string)
  sign = string[0] if string[0] == SIGNS[1]
  string.delete!(SIGNS)

  converted_integer = string_to_integer(string)

  sign.nil? ? converted_integer : -converted_integer
end

# def string_to_signed_integer(string)
#   signed = SIGNS.include?(string[0]) ? string[1..-1] : string
#   string[0] == SIGNS[1] ? -string_to_integer(signed) : string_to_integer(signed)
# end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
