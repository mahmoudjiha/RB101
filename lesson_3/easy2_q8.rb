# easy2_q8.rb

advice = 'Few things in life are as important'\
         ' as house training your pet dinosaur.'

p advice.slice(0..35) # => returns removed characters
p advice.slice!(0..35) # => returns removed characters and mutates original
p advice