# string_convert.rb
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

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

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
