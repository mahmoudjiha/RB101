# consecutive_sume_or_product.rb

# Write a program that asks the user to enter an integer >0, then prompt the
# user to instruct the program to return the sum or product of all numbers
# between 1 and the integer
#
# Input: nonzero integer as string, 's' or 'p' from user
# Output: - Sum of integers between 1 & nonzero integer if 's'
#         - Product of integers between 1 & nonzero integer if 'p'
#
# Requirements:
# >> Accepts two user inputs
# >> Validates that the first is a nonzero int > 0 & the 2nd is str 's' or 'p'
# >> Computes the sum or product, according to the 2nd user input
# >> Implicit: includes both 1 & the number inputted in result
#
# Examples/Test cases:
# User enters '5' & 's' => 'The sum of the integers between 1 and 5 is 15.'
# User enters '6' & 'p' => 'The product of the integers between 1 and 6 is 720.'
# User enters '0' => 'Invalid response, please enter a nonzero integer.'
# User enters '1' & 's' => 'The sum of the integers between 1 and 1 is 1.'
# User enters '1' & 'p' => 'The product of the integers between 1 and 1 is 1.'
# Large numbers?
#
# Data structure: string user input, integers to compute, string output
#
# Algorithm:
# Prompt the user to enter an integer greater than 0
#   - convert the user's input to an integer
#   - if the resulting value is an int <= 0, display error prompt & repeat loop
#   - otherwise, break the loop
#
# Prompt the user to choose to compute the sum or product
#   - if the user chooses to compute the sum
#     - sum all numbers between 1 and previously inputted nonzero integer
#     - print the sum of the integers to the screen
#   - if the user chooses to compute the product
#     - multiply each consecutive number between 1 and previously inputted
#       nonzero integer
#     - print the product of the integers to the screen
#   - else
#     - prompt the user to enter a valid input
#
################################################################################

# define methods
def prompt(str)
  puts '>> ' + str
end

def calculate_sum(num)
  sum_total = 0
  1.upto(num) { |int| sum_total += int }
  sum_total
end

def calculate_product(num)
  product_total = 1
  1.upto(num) { |int| product_total *= int }
  product_total
end

# initialize variables
nonzero_integer = ''
compute = ''

# user input loops
loop do
  prompt('Please enter an integer greater than 0:')
  nonzero_integer = gets.to_i
  break if nonzero_integer > 0
  prompt('Invalid response.')
end

loop do
  prompt("Enter 's' to compute the sum, 'p' to compute the product.")
  compute = gets.chomp
  break if compute == 's' || compute == 'p'
  prompt('Invalid response.')
end

# Evaluate inputs & output results
case compute
when 's'
  sum = calculate_sum(nonzero_integer)
  puts "The sum of the integers between 1 and #{nonzero_integer} is #{sum}."
when 'p'
  product = calculate_product(nonzero_integer)
  puts "The product of the integers between 1 "\
       "and #{nonzero_integer} is #{product}."
end
