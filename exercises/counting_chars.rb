# counting_chars.rb

# Ask a user for an input of word(s) and output the number of characters to
# the screen. Spaces should not be included in the number.
#
# Input: string with characters
# Output: String & integer result
#
# Requirements:
# >> Accepts one input from user
# >> Evaluates the number of characters in the inputted string
# >> Implicit: Spaces should not count, but other punctuation marks should
# >> Outputs a string with the result included/interpolated
#
# Examples/test cases
# 'walk' => 4 chars
# "walk, don't run" => 13 chars
# edge/test case: words in another language?
#
# Data structure: string input, string output, integer length
#
# Algorithm:
# Prompt the user to input a word or multiple words
# Save the user's input as a string called words
# Determine the number of characters in words, excluding spaces
# Output the result string to the screen
#
################################################################################

print 'Please write a word or multiple words: '
words = gets.chomp

puts "There are #{words.delete(' ').length} characters in \"#{words}\"."
