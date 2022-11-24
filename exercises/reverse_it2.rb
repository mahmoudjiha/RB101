# reverse_it2.rb

# Write a method that takes one arg, a string with one or more words, and
# returns the given string with words that contain five or more chars
# reversed. Each string will consist of only letters and spaces
# Spaces should be included only when more than one word is present

# Input: string with only letters and spaces
# Output: string with words >5 characters reversed
#
# Requirements:
# >> Argument must be a string with only letters and spaces
# >> If there is only one word in the string, no spaces should be included
# >> capitalized characters should remain capitalized
#
# Examples/Test cases
# empty string => empty string
# string of spaces => empty string
# string with variable spaces? => no change if words > 1
# string with words separated by multiple spaces? => no change if words > 1
# string with one word + spaces => one word + no spaces
# strings with repeated words => all instances of words with length > 5 reversed
#
# Data structure: string input, string output
# Array may be used to separate words in the string
#
# Algorithm
# Given a string of letters and/or spaces
# Separate the string into an array based on delimiter ' '
# Remove whitespace from the string if the array contains only one element
# Iterate through each element in the array
#   - Evaluate if the length of each element is greater than or equal to five
#   - If true, replace characters in original string matching the element with
#     the reversed element
# return the string

def reverse_words(str)
  words = str.split(' ')
  words.length == 1 ? (new_str = str.rstrip) : (new_str = str)

  words.each do |word|
    new_str.gsub!(word, word.reverse) if word.length >= 5
  end

  new_str
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

p reverse_words('One     ')
puts reverse_words('A  string  of  words  separated  by  two  spaces')
puts reverse_words('A string   of  words    separated by    variable   spaces')
puts reverse_words('A string of repeated repeated repeated repeated words')
