# med2_q2.rb

a = 42
b = 42
c = a

puts a.object_id # => object id 1
puts b.object_id # => object id 1
puts c.object_id # => object id 1

# all variables will point to the same address in memory