# med1_q3.rb

# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number/divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(386)

# bonus one
# => the purpose of `number % divisor == 0` is to only add numbers to the
#    the array named factors that result in a modulo of 0, meaning that they
#    are factors of the number provided as an argument and there is no
#    remainder.

# bonus two
# => the purpose of the second to last line is to return the factors array
#    that has been populated with factors of the number provided as an argument.
#    without this line after the loop, the return value would always be the
#    return value of the while loop, which is nil.