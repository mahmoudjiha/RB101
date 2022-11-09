# multiple_signatures.rb

a = %w(a b c d e)
puts a.fetch(7)                      #=> throws an IndexError
puts a.fetch(7, 'beats me')          #=> beats me
puts a.fetch(7) { |index| index**2 } #=> 49
