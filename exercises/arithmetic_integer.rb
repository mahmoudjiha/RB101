# arithmetic_integer.rb

# Write a program that prompts the user for two pos integers and prints the
# results of adding, subtracting, multiply, dividing, exponentiating, and
# obtaining the remainder of the two integers.
#
# Input: User inputs two integers as strings
# Output: sum, difference, product, quotient, remainder, and power
#
# Requirements:
# >> Does not need to be validated
# >> Accepts two inputs from the user
# >> Outputs results & a string showing the operation run
#
# Examples/test cases:
# zero as the second integer? > not worrying about validation though
# User inputs 23 & 17
# => 23 + 17 = 40
# => 23 - 17 = 6
# => 23 * 17 = 391
# => 23 / 17 = 1
# => 23 % 17 = 6
# => 23 ** 17 = 1410500395560662968926103
#
# Data structure: str input, integers, str output
# Question: can you store operators in an array?
#
# Algorithm:
#
# Obtain two numbers from the user
#   - Prompt the user for the first number
#   - Convert the string to an integer
#   - Save the integer in variable num1
#   - Repeat for variable num2
#
# Perform operations
# Output results to screen
#
################################################################################

# define prompt method
def prompt(str)
  puts '==> ' + str
end

# set operators constant
OPERATORS = %w(+ - * / % **)

# obtain numbers
prompt('Enter the first number:')
num1 = gets.to_i

prompt('Enter the second number:')
num2 = gets.to_i

numbers = [num1, num2]

# Output results
OPERATORS.each do |operator|
  if operator == '/' || operator == '%' && num2 == 0
    prompt("#{num1} #{operator} #{num2} = UNK!")
  else
    prompt("#{num1} #{operator} #{num2} = #{numbers.inject(operator.to_sym)}")
  end
end

# prompt("#{num1} + #{num2} = #{num1 + num2}")
# prompt("#{num1} - #{num2} = #{num1 - num2}")
# prompt("#{num1} * #{num2} = #{num1 * num2}")

# if num2 == 0
#   prompt("#{num1} / #{num2} = UNK!")
#   prompt("#{num1} % #{num2} = UNK!")
# else
#   prompt("#{num1} / #{num2} = #{num1 / num2}")
#   prompt("#{num1} % #{num2} = #{num1 % num2}")
# end

# prompt("#{num1}**#{num2} = #{num1**num2}")

# If we wanted to use floats, we'd have to use a function to round the decimal
# points (e.g. Kernel#format) & ensure that we convert to floats. Also, if we
# are working with very large numbers, floating point error must be accounted
# for.
