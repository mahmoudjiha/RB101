# multiply_two_numbers.rb

# Create a method that takes two args, multiplies them, and returns the result.
#
# Input: two numbers
# Output: returns the product of the two numbers
#
# Requirements:
# >> Accepts two numerical arguments
# >> Returns the product of the two arguments
#
# Examples/test cases:
# 5 & 3 as args => returns 15
# 0 as arg => returns 0
# negative numbers?
# very large numbers?
#
# Data Structure: integer input, integer output
#
# Algorithm:
# Given two numerical arguments
# Perform multiplication on the two arguments
# Return the product
#
################################################################################

def multiply(num1, num2)
  num1 * num2
end

p multiply(5, 3)
p multiply(3, 5)
p multiply(0, 1)
p multiply(999, 301)
p multiply(-2, -300)
p multiply(-1, 2)

# If the first argument is an array, I would assume the array will have each
# element duplicated.
p multiply([1, 2, 3], 3)
