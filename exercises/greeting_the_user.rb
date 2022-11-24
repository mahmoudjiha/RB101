# greeting_the_user.rb

# Create a program that asks for a user's name & greets the user. If the user
# includes an exclamation point after their name, the greeting will be in all
# caps format

# Input: user will input their name as a string, optionally followed by an
#        exclamation point
# Ouput: A sentence case greeting or an all uppercase greeting, if the user
#        does not include or includes an exclamation point respectively
#
# Requirements:
# >> Obtains string from the user with their name
# >> Prints a sentence case greeting if no exclamation point
# >> Prints an uppercase greeting if there is an exclamation point
#
# Examples/Test cases:
# 'Bob' => 'Hello Bob.'
# 'Bob!' => 'HELLO BOB. WHY ARE WE SCREAMING?'
# Potential edge cases: different languages, non-alphanumerical characters
# 'bob' => ?
# 'McDonald' => 'McDonald'
#
# Data structure: string for user input, string for greeting output
#
# Algorithm:
# Obtain a string containing the user's name
#   - save user input as user_name
#   - capitalize the first letter of user_name
# Determine if the user's input ends with an exclamation point
# If true
#   - print UPPERCASE greeting
# else
#   - print sentence case greeting
#
################################################################################

# define method
def prompt(string)
  print(">> #{string} ")
end

# Prompt user to input their name
prompt('What is your name?')
user_name = gets.chomp.capitalize

# Evaluate conditional and print greeting
if user_name.end_with?('!')
  puts "HELLO #{user_name.chop!.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{user_name}."
end
