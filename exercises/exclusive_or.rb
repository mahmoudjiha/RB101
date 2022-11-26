# exclusive_or.rb

# Write a method named xor that takes two arguments and returns true if ONLY
# one of the arguments is truthy & returns false otherwise.
#
# Input: two arguments of any kind
# Output: true boolean if one argument is truthy and the other is not, false in
#         all other scenarios
#
# Requirements:
# >> Must accept two arguments
# >> Returns a boolean, either true or false
# >> Returns true if one argument is truthy & the other is not
# >> Returns false if both arguments are truthy or both are not truthy
#
# Examples/test cases
# (5.even?, 4.even?) => true
# (5.odd?, 4.odd?) => true
# (5.odd?, 4.even?) => false
# (5.even?, 4.odd?) => false
#
# Data structure: boolean, expressions
#
# Algorithm:
# Given two arguments
#
# Evaluate each argument for truthiness
#
# Return a boolean
#   - If the 1st argument is truthy and the 2nd argument is not, true
#   - If the 1st argument is not truthy and the 2nd argument is truthy, true.
#   - If both arguments are truthy, false
#   - If both arguments are not truthy, false
#
################################################################################

def xor?(expression1, expression2)
  !expression1 == !!expression2
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?)   == true
p xor?(5.odd?, 4.even?)  == false
p xor?(5.even?, 4.odd?)  == false
p xor?(5, 4)             == false
p xor?(nil, 4)           == true
p xor?(false, true)      == true
p xor?([1, 2, 3], {})    == false

# This version of xor? does not perform short-circuit evaluation. xor operations
# may exhibit short-circuiting if there are >2 conditions. If there are only two
# conditions, short-circuiting would not make sense in the context of xor
# operations.
#
# Unclear if xor operations ever involve more than two conditions however.
# Assumption is yes.
