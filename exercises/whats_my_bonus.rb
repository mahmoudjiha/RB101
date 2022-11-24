# whats_my_bonus.rb

# Write a method that takes two args, a positive integer and a boolean, and
# calculates the bonus for a given salary. If boolean is true, bonus is half
# of the salary. If false, bonus is 0.

# Input: Positive integer, boolean
# Output: Positive integer
#
# Requirements:
# >> Must take two arguments: a positive integer & a boolean
# >> Must return a positive integer
#
# Examples/Test cases:
# 2800, true => 1400
# 1000, false => 0
# 50000, true => 25000
# Large number 100_000_000_000, true => 50_000_000_000
# 2801, true => 1400
# 1, true => 0
#
# Data structure: integer, boolean
#
# Algorithm:
# Given a positive integer salary and a boolean
# Return the integer 0 if false
# Else
#   - Divide the positive integer by 2
#   - return the quotient

def calculate_bonus(int, boolean = true)
  boolean ? int / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
puts calculate_bonus(100_000_000_000, true) == 50_000_000_000
puts calculate_bonus(2801, true) == 1400
puts calculate_bonus(1, true) == 0
puts calculate_bonus(100) == 50
