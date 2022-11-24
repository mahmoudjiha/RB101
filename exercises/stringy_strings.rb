# stringy_string.rb

# Write a method that takes a single arg, a positive integer, and returns
# a string of alternating 1s and 0s, starting with 1. Length of the string
# should match the integer provided

# Input: positive integer
# Output: string of alternating 1s and 0s, always starting with 1 w/ length
#         eql to the input
#
# Requirements:
# >> Argument provided must be a positive integer
# >> String returned must begin with '1'
# >> Length of returned string must be eql to the argument
#
# Examples/Test cases:
# argument of 0 => empty string
# really large numbers?
# 6 => '101010', 9 => '101010101', 4 => '1010', 7 => '1010101'
#
# Data structure: str, loop
#
# Algorithm
# Given a positive integer
# Populate a string with alternating characters 1 and 0, always starting with
# one, until the length of the string is equal to the positive integer
# return the string

def stringy(int, start = 1)
  str = ''
  return str if int == 0

  if start == 0
    int.times { |num| num.even? ? str.concat('0') : str.concat('1') }
  else
    int.times { |num| num.even? ? str.concat('1') : str.concat('0') }
  end

  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(0) == ''
# x = 9**10
# puts stringy(x) == '10' * (x / 2) # very slow
puts stringy(6, 0) == stringy(6).reverse
