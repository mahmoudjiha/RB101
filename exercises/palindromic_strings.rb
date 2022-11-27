# palindromic_strings.rb

# Write a method that returns true if the passed string argument is a palindrome
# and returns false otherwise.
#
# Input: string
# Output: boolean true if string input is a palindrome, otherwise false
#
# Requirements:
# >> Accepts a string as an argument
# >> Returns true if the passed string is a palindrome
# >> Returns false if the passed string is not a palindrome
# >> Case is taken into account
# >> Punctuation marks & spaces are taken into account
#
# Examples/test cases:
# 'madam' => true
# 'Madam' => false
# "madam i'm adam" => false
# '356653' => true
# ' @11@ ' => true
# '  madam  ' => true
# ' madam  ' => false
#
# Data structure: string argument, boolean output
#
# Algorithm:
# Given a string of characters
# Determine the length of the string
# Save the length of the string / 2 as a whole number integer variable
# Initialize result variable containing true boolean
# Iterate through the string index
#   - If the character in the 1st index and the last index are not equal, set
#     result to false
#   - Break iteration loop if result == false
#   - Continue with adjacent characters until length/2 iterations
# return result
#
################################################################################

def palindrome?(str)
  limit = str.length / 2
  result = true

  limit.times do |index|
    result = false if str[index] != str[-(1 + index)]
    break if result == false
  end

  result
end

def palindromic_string?(string)
  string == string.reverse
end

def palindromic_array?(array)
  array == array.reverse
end

def palindromic?(str_or_arr)
  str_or_arr == str_or_arr.reverse
end

p palindromic?('madam') == true
p palindromic?('Madam') == false          # (case matters)
p palindromic?("madam i'm adam") == false # (all characters matter)
p palindromic?('356653') == true
p palindromic?(' @11@ ') == true
p palindromic?('  madam  ') == true
p palindromic?(' madam  ') == false

p palindromic?([1, 2, 3]) == false
p palindromic?([1, 2, 2, 1]) == true
p palindromic?([true, {}, [], [], {}, true]) == true
