# odd_numbers.rb

# Print all odd numbers from 1 to 99, inclusive, on a separate line
#
# Input: n/a
# Output: Odd integers between and including 1 & 99 printed to the screen
#
# Requirements:
# >> Inclusive range: 1 & 99 are included in evaluation
# >> Each number printed to the screen on a new line
#
# Data structure: range, array
#
# Algorithm:
# Given a collection of integers 1 through 99
# Iterate through the collection
#   - If the number is odd, print it to the screen followed by a newline
#   - If the number is not odd, move on to the next number in the collection
#
################################################################################

(1..99).each { |num| puts num if num.odd? }

1.upto(99) { |int| puts int if int.odd? }
