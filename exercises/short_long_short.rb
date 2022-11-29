# short_long_short.rb

# Write a method that takes two string arguments, determines the longest of the
# two, and then returns the result of concatenating the short string, long
# string, and the short string again.
#
# Input: two string arguments of different lengths
# Ouput: one long string consisting of the shorter string concatenated before
#        and after the long string (i.e. prepended and appended)
#
# Requirements:
# >> Accepts two string arguments of differing lengths
# >> Able to determine which string is longer
# >> Prepends and appends the shorter string onto the longer string
# >> Returns the new string
#
# Examples/test cases:
# ('abc', 'defgh') => 'abcdefghabc'
# ('abcde', 'fgh') => 'fghabcdefgh'
# ('', 'xyz') => 'xyz'
# ('123', 'abcdef') => '123abcdef123'
#
# Data structure: string input, string output
#
# Algorithm:
# Given two strings of differing lengths
#
# If the 1st string argument is shorter than the 2nd
#   - Concatenate the 2nd string argument onto the 1st
#   - Concatenate the 1st string argument onto the resulting string
#   - Return the string resulting from the two concatenations
# Else
#   - Concatenate the 1st string argument onto the 2nd
#   - Concatenate the 2nd string argument onto the resulting string
#   - Return the string resulting from the two concatenations
#
################################################################################

def short_long_short(string1, string2)
  if string1.length < string2.length
    string1 + string2 + string1
  else
    string2 + string1 + string2
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
p short_long_short('123', 'abcdef') == '123abcdef123'
