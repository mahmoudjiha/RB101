# retire_when.rb

# Create a program that displays what year the user will retire & how many years
# left until then

# Input: User provides current age str & desired retirement age str in years
# Output: str stating current year & retirement year followed by str stating
#         the number of years remaining until year of retirement
#
# Requirements:
# >> Accepts two strings inputted by user representing current, retirement age
# >> Implicit: Gregorian calendar
# >> Implicit: no newline after prompts
# >> Determines current year
# >> Computes what year retirement will occur
# >> Prints string stating current year & year of retirement
# >> Prints string stating remaining years of work until retirement
#
# Examples/Test cases
# User inputs age 30, retirement age 70 => retirement in 2062, 40 yrs left
# User inputs age 0, retirement age 100 => retirement in 3022, 100 yrs left
# User inputs age < 0 => Invalid
#
# Data Structure: string user input, convert to int, string output with computed
# values interpolated
#
# Algorithm
# Determine the year the program is running
#   - save the year as current_year
#
# Determine the user's age and desired age of retirement
#   - prompt the user for their age
#   - save inputted string as current_age
#   - convert current_age to an Integer
#   - prompt the user for their desired age of retirement
#   - save the inputted string as retirement_age
#   - convert retirement_age to an Integer
#
# Determine the user's year of retirement and the # of years remaining
#   - years_remaining = retirement_age - current_age
#   - retirement_year = current_year + years_remaining
#
# Print the current year and retirement year in string form
# Print the remaining number of years of work in string form
#
################################################################################

# Import Date and DateTime classes
require 'date'

# Define prompt method
def prompt(str)
  print ">> #{str} "
end

# Define constant and initialize variables
CURRENT_YEAR = Date.today.cwyear
current_age = ''
retirement_age = ''

# Obtain user's current age and desired retirement age
loop do
  prompt('What is your age?')
  current_age = gets.chomp.to_i

  prompt('At what age would you like to retire?')
  retirement_age = gets.chomp.to_i

  break if current_age.is_a?(Integer) && retirement_age.is_a?(Integer)

  prompt("Invalid input! Please enter an integer\n")
end

# Compute year of retirement and number of years remaining
years_remaining = retirement_age - current_age
retirement_year = CURRENT_YEAR + years_remaining

# Print results to screen
if current_age < retirement_age
  puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}.\n"\
       "You have only #{years_remaining} years of work to go!"
elsif current_age > retirement_age
  puts "It's #{CURRENT_YEAR}. You retired in #{retirement_year}.\n"\
  "You have been retired for #{-years_remaining} years!"
else
  puts "It's #{CURRENT_YEAR}. You will retire or have retired this year!"
end
