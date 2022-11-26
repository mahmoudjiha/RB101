# searching_101.rb

# Write a program that asks the user for 6 numbers, then prints a message that
# describes whether or not the 6th number appears amongst the first 5 numbers.
#
# Input: User inputs 6 numerical strings
# Output: String with array interpolated
#
# Requirements:
# >> Must accept 6 separate user inputs
# >> Must convert user inputs from strings to integers
# >> Implicit: First 5 numbers must be stored in an array
# >> Must be able to evaluate if the 6th number appears in the stored array
# >> Must output results to the screen
#
# Examples/Test cases:
# User enters 25, 15, 20, 17, 23, 17 =>'The number 17 appears in [arr].'
# User enters 25, 15, 20, 17, 23, 18 =>'The number 18 does not appear in [arr].'
# How is zero handled?
# Validation? What types of numbers are allowed?
# Data structure: input strings, integers, arr to store integers, string output
#
# Algorithm:
# Create an empty array [arr] to store user inputs
#
# Obtain six numbers from the user
#   - Prompt the user for input
#   - Validate the user's input is an numerical value
#   - Convert the input to a numerical value
#   - Store the input in [arr]
#   - Repeat until [arr] contains 6 elements
# 
# Save the first 5 elements of [arr] in [new_arr]
# Save the last element of [arr] in new_str
#
# Evaluate whether [new_arr] contains new_str
# If true, output 'The number new_str appears in [arr].'
# Else, output 'The number new_str does not appear in [arr].'
#
################################################################################

# Define prompt constant and methods
PROMPT_COUNT = %w(1st 2nd 3rd 4th 5th last)
INVALID = 'Invalid response. Please enter a number.'

def user_prompt(prompt_index)
  puts "==> Enter the #{PROMPT_COUNT[prompt_index]} number:"
end

# Define number validation method
def valid_num?(str) # Edge cases: trailing zeros, decimal point alone
  str.to_i.to_s == str || str.to_f.to_s == str
end

# obtain numbers
number_inputs = []

6.times do |index_num|
  user_input = ''

  loop do
    user_prompt(index_num)
    user_input = gets.chomp
    break if valid_num?(user_input)
    puts INVALID
  end

  number_inputs << user_input
end

# segregate numbers & display result
five_numbers = number_inputs[0, 5].map(&:to_i)
last_number = number_inputs[5].to_i

included = five_numbers.include?(last_number) ? 'appears' : 'does not appear'

puts "The number #{last_number} #{included} in #{five_numbers}."
