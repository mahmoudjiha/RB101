# list_of_digits.rb

require 'pry'

def digit_list(number)
  length = number.to_s.length
  digit_list = []
  iterator = -1

  length.times do
    iterator += 1
    digit_list << number.to_s[iterator].to_i
  end

  digit_list
end

# forgot String#split exists, trying not to method hunt

def digit_list2(number)
  number.to_s.split('').map(&:to_i) #=> refactored to_i block
end

puts digit_list2(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list2(7) == [7]                     # => true
puts digit_list2(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list2(444) == [4, 4, 4]             # => true
