# what_century.rb

# Write a method that takes a year as input and returns the century. The return
# value should be a string that begins with the numerical century and ends with
# st, nd, rd, or th as appropriate for the number.
#
# Input: a year input
# Output: a string beginning with a numerical value for the century followed by
#         the corresponding ordinal suffix
#
# Requirements:
# >> Able to accept an argument, corresponding to a year
# >> Implicit: year argument provided as an integer
# >> Able to determine the century in which the year occurred
# >> Able to determine the appropriate ordinal suffix for the century
# >> Outputs the resulting string, beginning with a numerical value
#    corresponding to the century followed by the ordinal suffix
#
# Examples/test cases:
# 2000  => '20th'
# 2001  => '21st'
# 1965  => '20th'
# 256   => '3rd'
# 5     => '1st'
# 10103 => '102nd'
# 1052  => '11th'
# 1127  => '12th'
# 11201 => '113th'
#
# Data structure: Integer argument, String output, Suffix hash, array to store
#                 digits
#
# Algorithm:
# Initialize a Hash constant called SPECIAL_ORDINALS
#
# Initialize a method called which_century?
#
# Given an integer year argument
#
# Return '1st' and exit the method if the year is less than or equal to 100
#
# Initialize an array called digits
# Initialize a string called century
#
# Separate each digit of the argument and add them to digits one by one
# Convert each element of the array digits into a string
#
# Iterate through the array digits from the first index to the 3rd to last index
#   - Concatenate the element onto the string century
#
# If the last element in the array digits is not '0'
#   - Convert the string century into an integer and add 1
#   - Convert the resulting integer into a string and reassign it to century
#
# If the 2nd to last char in century is not equal to '1' and the last character
#   converted is a key in SPECIAL_ORDINALS
#    - Find the value corresponding to the string key in SPECIAL_ORDINALS that's
#      equivalent to the last character in century
#    - Concatenate the value onto the string century
# Else
#    - Concatenate 'th' onto the string century
#
# Return the string century
#
################################################################################

SPECIAL_ORDINALS = { '1' => 'st', '2' => 'nd', '3' => 'rd' }

def which_century?(int)
  return '1st' if int <= 100
  digits = int.digits.reverse

  century = digits[0..-3].join
  century = (century.to_i + 1).to_s unless digits.last == 0

  if century[-2] != '1' && SPECIAL_ORDINALS.key?(century[-1])
    century << SPECIAL_ORDINALS[century[-1]]
  else
    century << 'th'
  end

  century
end

p which_century?(2000) == '20th'
p which_century?(2001) == '21st'
p which_century?(1965) == '20th'
p which_century?(256) == '3rd'
p which_century?(5) == '1st'
p which_century?(10103) == '102nd'
p which_century?(1052) == '11th'
p which_century?(1127) == '12th'
p which_century?(11201) == '113th'
p which_century?(101) == '2nd'
