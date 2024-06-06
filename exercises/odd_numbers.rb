# odd_numbers.rb

# method 1
# (1..99).each do |number|
#   if number % 2 == 1
#     puts number
#   end
# end

# method 2
# number = 1
# loop do
#   break if number > 99
#   puts number
#   number += 2
# end

# method 3
# 1.upto(99) { |number| puts number if number % 2 == 1 }

# method 4
puts (1..99).to_a.select(&:odd?)
