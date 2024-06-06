# running_totals.rb

def running_total(numbers)
  (numbers.size - 1).times do |index|
    numbers[index + 1] += numbers[index]
  end

  numbers
end

# def running_total(numbers)
#   sum = 0
#   numbers.map { |value| sum += value }
# end

# def running_total(numbers)
#   totals = []
#   numbers.inject
# end


puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []