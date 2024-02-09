# multiples_refactored.rb

# find all multiples of integers 3 and 5 between 1 and a positive integer
# return sum of all multiples

def multiple_of_3_or_5?(number)
    number % 3 == 0 || number % 5 == 0
end

def multisum(end_value)
    multiples = (1..end_value).to_a.select { |number| multiple_of_3_or_5?(number) }
    multiples.reduce(:+)
end

# def multisum(end_value)
#     (1..end_value).to_a.select(&method(:multiple_of_3_or_5?)).reduce(:+)
# end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
