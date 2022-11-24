# tip_calculator.rb

# Create a tip calculator which prompts for a bill amount and tip rate. The
# program must computer the tip & print both the tip and the total bill to the
# screen.

# Input: two strings from user, the bill amount and tip percentage
# Output: two strings stating the calculated tip and total bill
#
# Requirements:
# >> Two strings must be obtained from user
# >> Strings must be converted to floats to compute tip and total bill
# >> Implicit: round to two decimal points
#
# Examples/Test cases:
# $200 bill, 15% tip => $30.0 tip, $230.0 total
# $0 bill, any tip => $0.0 tip, $0.0 total
# $20 bill, 3000% tip => $600 tip, $620 total
# $352.99 bill, 15% tip => 52.95 tip, $405.94 total
#
# Data Structure
# String input from user, convert to floats, string text output + computed
# numerical values
#
# Algorithm
# START
# GET bill_amount
# GET percent_to_tip
#
# SET tip_amount = bill_amount * percent_to_tip
# SET bill_total = bill_amount + tip_amount
#
# PRINT tip_string
# PRINT total_bill_string
#
# END

#######################################################

# Define prompt method
def prompt(string)
  puts ">> " + string
end

# Get user inputs
prompt('What is the bill?')
print('$: ')
bill_amount = gets.chomp.to_f

prompt('What is the tip percentage?')
print('%: ')
percent_to_tip = gets.chomp.to_f

# Compute values
tip_amount = (bill_amount * percent_to_tip / 100)
bill_total = (bill_amount + tip_amount)

# Format & print to screen
prompt("The tip is $#{format('%#.2f', tip_amount)}")
prompt("The total is $#{format('%#.2f', bill_total)}")
