# middle_default_args.rb
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6) #=> [4, 5, 3, 6]

# From docs: "Ruby fills in the missing arguments from left to right"

def my_method2(a, z, b = 2, q = 1, c = 3, y, d)
  p [a, z, b, q, c, y, d]
end

my_method2(4, 5, 6, 9, 8) #=> [4, 5, 6, 1, 3, 9, 8]

# def my_method3(a, b = 2, z, c = 3, d)
#   p [a, b, z, c, d]
# end

# Mental model:

#   In the case of the middle arguments being optional, Ruby will first assign
# the leftmost argument to the leftmost require parameter. Then the next
# argument will be assigned to the next adjacent required parameter, and so on,
# until the next adjacent parameter is an optional parameter.
#
#   Then, the rightmost argument will be assigned to the rightmost required
# parameter. Followed by the argument adjacent to the rightmost argument being
# assigned to the next adjancent required parameter from the right. If there
# aren't enough arguments to satisfy all required parameters, an error will be
# thrown.
#
#   After all required parameters are assigned, Ruby will assign the remaining
# arguments from left to right starting from the leftmost optional parameter
# to the rightmost. The remaining optional parameters will be assigned their
# default values.
#
#   A syntax error will be thrown if there are required arguments, followed by
# optional arguments, followed by required arguments, followed by an optional
# argument in the method definition.
