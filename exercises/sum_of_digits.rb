# sum_of_digits.rb

# Write a method that takes one argument, a positive integer, and returns the
# sum of its digits

# Input: A positive integer
# Output: A positive integer
#
# Requirements:
# >> Input argument must be a positive integer
# >> Implicit: output will be a positive integer
# >> Implicit: Can accept large numbers
# >> Challenge: do not use basic looping constructs
#
# Examples/Test cases:
# 23 => 5, 496 => 19, 123_456_789 => 45
# one number => that same number
#
# Data structure: Integer input/output, string to split & an
# array to hold each individual digit
#
# Algorithm:
# Given a positive integer
# Convert the integer into a string
# Save each individual digit of the string in an array
# Convert the elements to integers and sum
# Return the sum

def sum(int)
  int.to_s.chars.map(&:to_i).sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
puts sum(5) == 5