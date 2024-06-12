# signed_to_string.rb

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

def signed_integer_to_string(number)
  result = integer_to_string(number.abs)

  case number <=> 0
  when 1  then "+#{result}"
  when -1 then "-#{result}"
  else         result
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
