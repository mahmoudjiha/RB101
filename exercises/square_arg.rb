# square_arg.rb

# Create a method that takes an argument, squares it, and returns the result
# using the multiply method that was written prior.
#
# Input: one numerical argument
# Output: returns the square of the numerical argument
#
# Requirements:
# >> Accepts a numerical argument
# >> Returns the square of the argument
#
# Examples/test cases:
# 5 as arg => returns 25
# 0 as arg => returns 0
# -8 as arg => returns 64
# very large numbers?
#
# Data Structure: integer input, integer output
#
# Algorithm:
# Given a method multiply that multiplies two arguments and returns the result
# Define a method square
#   - take one argument
#   - provide the argument as both arguments for the multiply method
#   - return the power
#
################################################################################

def multiply(num1, num2)
  num1 * num2
end

def square(base)
  multiply(base, base)
end

# def exponentiate(base, exponent)
#   return 1 if exponent == 0 && base >= 0
#   return -1 if exponent == 0 && base < 0

#   power = base

#   (exponent.abs - 1).times do
#     power = multiply(power, base)
#   end

#   power = 1 / power.to_r if exponent < 0

#   exponent.even? && base < 0 ? -power : power
# end

def exponentiate(base, exponent)
  power = base

  case
  when exponent == 0
    base < 0 ? (return -1) : (return 1)
  when exponent > 0
    (exponent - 1).times do
      power = multiply(power, base)
    end
  when exponent < 0
    (exponent.abs - 1).times do
      power = multiply(power, base)
    end
    power = 1 / power.to_r # Converting to rational to match Ruby behavior
  end

  exponent.even? && base < 0 ? -power : power
end

p square(5) == 25
p square(-8) == 64
p square(-1) == 1
p square(0) == 0
p square(500) == 250000

p exponentiate(6, 3)     == 6**3
p exponentiate(-5, 3)    == -5**3
p exponentiate(-5, 2)    == -5**2
p exponentiate(25, 5)    == 25**5
p exponentiate(25, -5)   == 25**-5
p exponentiate(-25, -5)  == -25**-5
p exponentiate(1.5, 5)   == 1.5**5
p exponentiate(1.5, -5)  == 1.5**-5
p exponentiate(-1.5, -5) == -1.5**-5
p exponentiate(-1.5, 5)  == -1.5**5

# Does not handle decimal point exponents, no Float#Times method.
