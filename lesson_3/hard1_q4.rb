# hard1_q4.rb
require 'pry'

def is_an_ip_number?(string) # => edge case: leading zeros
  if string.to_i.to_s == string
    string.to_i >= 0 && string.to_i <= 255
  end
end

def dot_separated_ip_address?(input_string)         # => changed param/var names
  dot_separated_strings = input_string.split('.')
  return false if dot_separated_strings.length != 4 # => added length validation
  while dot_separated_strings.size > 0 do
    string = dot_separated_strings.pop
    return false unless is_an_ip_number?(string)    # => break to return
  end
  true                                              # => explicit return removed
end

p dot_separated_ip_address?('bob.dylan.price.george')
