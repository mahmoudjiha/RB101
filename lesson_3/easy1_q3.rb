# easy1_q3.rb

advice = "Few things in life are as important as house
          training for your pet dinosaur."

p advice.object_id

advice_array = advice.split
advice_array[6] = 'urgent'
new_string = ''

advice_array.each do |element|
  new_string << element + ' '
end

advice.replace(new_string)

p advice
p advice.object_id

# From solution: Forgot about String#gsub!, didn't want to method hunt