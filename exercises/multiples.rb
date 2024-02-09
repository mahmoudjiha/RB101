# multiples.rb

# find all multiples of integers 3 and 5 between 1 and a positive integer
# return sum of all multiples

def multisum(max_value)
    sum = 0
    multiples = (1..max_value).to_a.select {|number| number % 3 == 0 || number % 5 == 0 }
    multiples.length.times { |i| sum += multiples[i] }

    sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
