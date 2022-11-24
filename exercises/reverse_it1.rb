# reverse_it1.rb

# Write a method that takes one argument, a string, and returns a new string
# with the words in reverse order.

# Input: string, Output: new string
# Requirements
# >> must return a new string with the words in reverse, not all characters
# >> implicit: string of characters/words
# >> one argument
# >> empty strings should return an empty string without raising an error
# >> a string of spaces should return an empty string
#
# Questions/Edge cases:
# A string of words separated by multiple spaces => separated by one space
# A string of words separated by a var num of spaces => separated by one space
#
# Data structure: string; may want to use an array to separate a string
# based on a delimiter.
#
# Algorithm:
# Given a string of characters
# Split the string based on the delimiter of a single space
# Store the new strings as elements in an array
# Store the array elements in a new string sequentially & followed by a single
# space, starting from the array element with the highest index until index of 1
# Store the final array element in the new string
# Return the new string

def reverse_sentence(str)
  words = str.split(' ')
  new_str = ''

  new_str.concat(words.pop, ' ') until words.length <= 1
  new_str.concat(words.pop) unless words.length < 1

  new_str
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

p reverse_sentence('A  string  of  words  separated  by  two  spaces')
p reverse_sentence('A string   of  words    separated by    variable   spaces')

# from solution: Array#reverse, Array#join
