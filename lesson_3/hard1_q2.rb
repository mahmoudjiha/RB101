# hard1_q2.rb

greetings = { a: 'hi' } 
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # >> :a=>"hi there"

# informal greeting is assigned to the value of the key :a, so it references
# the same object (memory space) as the value of :a. When using String#<<, a
# mutating method, the value in that memory space is changed. When subsequently
# calling the hash or the value of the key :a, it will have changed.

# from solution: .clone to make a new object