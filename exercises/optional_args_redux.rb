# optional_args_redux.rb

require 'date' #=> imports Date & DateTime classes

# From docs: "creates a date object denoting the given calendar date."

puts Date.civil               #=> #<Date: -4712-01-01 ...>
puts Date.civil(2016)         #=> #<Date: 2016-01-01 ...>
puts Date.civil(2016, 5)      #=> #<Date: 2016-05-01 ...>
puts Date.civil(2016, 5, 13)  #=> #<Date: 2016-05-13 ...>
