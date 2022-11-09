# med1_q2.rb

# puts 'the value of 40 + 2 is ' + (40 + 2)
# => leads to a TypeError because you can't concatenate an integer literal to a
#    string literal without first converting it to a string

# fix method one
puts 'the value of 40 + 2 is ' + (40 + 2).to_s

# fix method two
puts "the value of 40 + 2 is #{40 + 2}"