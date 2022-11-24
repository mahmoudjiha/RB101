# array_average.rb

# Write a method that takes one arg, an array of integers, and returns the
# average of all numbers in the array. The array will never be empty and the
# numbers will always be positive integers. Result should be an integer.

# Input: Array with positive integer elements, number of elements > 0
# Output: integer
#
# Requirements:
# Array with positive integer elements as the argument
# Array argument must have at least one element
# Implicit: output will be a positive integer
#
# Examples/Test Cases:
# [1, 6] => 3
# [1, 5, 87, 45, 8, 8] => 25
# [9, 47, 23, 95, 16, 52] => 40
# [1] => 1
# Large numbers?
#
# Algorithm:
# Given an array of positive integers with at least one element
# Determine the number of elements in the array
# Find the sum of all of the elements in the array
# Divide the sum by the number of elements in the array
# Return the result

def average(arr)
  arr.sum.to_f / arr.length
end

puts average([1, 6]) == 7.0 / 2.0 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 154.0 / 6.0
puts average([9, 47, 23, 95, 16, 52]) == 242.0 / 6.0
