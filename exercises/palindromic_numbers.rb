# palindromic_numbers.rb

# Write a method that returns true if its integer argument is a palindrome
# and returns false in all other cases.
#
# Input: An integer argument
# Output: true boolean if the integer is a palindrome, false otherwise
#
# Requirements:
# >> Accepts an integer argument
# >> Returns a boolean if the integer is a palindrome, false otherwise
#
# Examples/test cases:
# 34543 => true
# 123210 => false
# 22 => true
# 5 => true
# Leading zeros?
#
# Data structure: integer as argument, string or arr to reverse, boolean return
#
# Algorithm:
# Given an integer argument
#
# Store each individual digit in an array called digits
# Return true if digits contains only one element
#
# Reverse the order of elements in digits, saving in a new array
#
# Compare digits and the new array
#   - If they are equivalent in contents and order, return true
#   - If not, return false
#
################################################################################

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

def palindromic_num?(int)
  digits = []
  remainder = int

  until remainder == 0
    remainder, placeholder = remainder.divmod(10)
    digits.prepend(placeholder)
  end

  digits == digits.reverse
end

def palindromic_number(integer) # handles octal numbers
  integer.digits == integer.digits.reverse
end

p palindromic_num?(34543) == true
p palindromic_num?(123210) == false
p palindromic_num?(22) == true
p palindromic_num?(5) == true

# Could probably use regexp to handle leading zeros as well
