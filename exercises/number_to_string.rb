# number_to_string.rb

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(number)
  characters = []

  loop do
    quotient, remainder = number.divmod(10)
    characters << remainder
    break if quotient == 0
    number = quotient
  end

  characters.reverse!.map! { |element| DIGITS[element] }
  characters.inject(:+)
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
