# insensitive_palindrome.rb

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
# >> Case is NOT taken into account
# >> Non-alphanumeric characters are ignored
#
# Examples/test cases:
# 'madam' => true
# 'Madam' => true
# "Madam, I'm Adam" => true
# '356653' => true
# '356a653' => true
# ' @11@ ' => true
# '  madam  ' => true
# ' madam  ' => true
#
# Data structure: string argument, boolean output
#
# Algorithm:
# Given a string of characters
#
# Save an array constant of alphabetical character strings as ALPHABET
#
# Define a method called real_palindrome?
# Initialize a string variable called original
#
# Convert characters in the given string to downcase
# Split the downcased string into individual characters and
#   save in an array called chars
#
# Iterate through each element in chars
#   - If the element is an integer OR is present in ALPHABET, add the element to
#       original
#
# Reverse original and save it as a string called reversed, without modifying
#   original
#
# Compare the strings called original and reversed
#   - Return true if equivalent
#   - Return false if not
#
################################################################################
ALPHANUM = %w(a b c d e f g h i j k l m n o p q r
              s t u v w x y z 1 2 3 4 5 6 7 8 9)

def real_palindrome?(str)
  original = ''
  chars = str.downcase.split('')

  chars.each { |char| original << char if VALID.include?(char) }

  original == original.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
p real_palindrome?(' @11@ ') == true
p real_palindrome?('  madam  ') == true
p real_palindrome?(' madam  ') == true

# probably easier after learning regexp, good practice though
