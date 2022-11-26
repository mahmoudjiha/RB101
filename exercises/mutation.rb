# mutation.rb

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value } # adding each element (same address)
array1.each { |value| value.upcase! if value.start_with?('C', 'S') } # mutating
puts array2
#=> Moe
#=> Larry
#=> CURLY
#=> SHEMP
#=> Harpo
#=> CHICO
#=> Groucho
#=> Zeppo

# Ruby's 'pass by value of the reference' feature can be problematic if you
# need to mutate the original object but pass the original value. To avoid this,
# use reassignment, a non-mutating method, or a method that uses the value to
# create a new object (if this exists).
