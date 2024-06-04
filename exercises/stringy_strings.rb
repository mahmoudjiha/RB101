# stringy_strings.rb

# def stringy(number)
#   iterator = 1
#   string_of_numbers = ''

#   until iterator > number
#     if iterator.odd?
#       string_of_numbers << '1'
#     elsif iterator.even?
#       string_of_numbers << '0'
#     end

#     iterator += 1
#   end

#   string_of_numbers
# end

def stringy(size, zero_start: false)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  if zero_start
    numbers.shift
    final_element = size.even? ? 1 : 0
    numbers << final_element
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6, true) == '010101'
puts stringy(9, true) == '010101010'
puts stringy(4, true) == '0101'
puts stringy(7, true) == '0101010'
