# easy1_q4.rb

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1) # => will delete array element at index 1 (Integer 2)
p numbers

numbers = [1, 2, 3, 4, 5]

numbers.delete(1) # => will delete array elements matching Integer 1
p numbers

# Both methods will return the deleted element.