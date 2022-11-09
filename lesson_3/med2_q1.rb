# med2_q1.rb

a = "forty two"
b = "forty two"
c = a

puts a.object_id # => object id 1
puts b.object_id # => object id 2
puts c.object_id # => object id 1

# variables a and c will point to the same memory address, but b will not.