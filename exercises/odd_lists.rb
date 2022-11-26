# odd_lists.rb

# Write a method that returns an array that contains every other element of
# an array
#
# Input: array
# Output: new_array with every other element
#
# Requirements:
# >> Accepts an array as an argument
# >> Array elements can be any type of object that arrays will accept
# >> Returns a new_array with every other element included
# >> Implicit: an empty array would either return an empty array or an error
# >> Implicit: starts from the first element
# >> Implicit: an array with an odd # of elements x will return an array with
#              x/2 + 1 elements
# >> Implicit: an array with a nonzero & even # of elements y will return an
#              an array with y/2 elements
#
# Examples/test cases:
# [2, 3, 4, 5, 6] => [2, 4, 6]
# [1, 2, 3, 4, 5, 6] => [1, 3, 5]
# ['abc', 'def'] => ['abc']
# [123] => [123]
# [] => []
# [1, 2, 3, 4, 1] => [1, 3, 1]
# [{}, 'nine', [9, true], false, nil] => [{}, [9, true], nil]
#
# Data structure: Array input & return, with elements of any type
#
# Algorithm:
# Given an array of objects
#
# Iterate through the collection
#   - set iterator to the index value of the first element of the original array
#   - add the array element at the index value of iterator to a new_array
#   - add 2 to the index value of the iterator
#   - end the iteration if the iterator value is equal to the index value
#     of the last element in the original array
#
# Return the new_array
#
################################################################################

def oddities1(arr)
  new_arr = []
  arr.length.times { |num| new_arr << arr[num] if num.even? }
  new_arr
end

def oddities2(arr)
  new_arr = []
  arr.each_index { |index| new_arr << arr[index] if index.even? }
  new_arr
end

def oddities3(arr)
  iterator = 0
  new_arr = []
  while arr.length > 0
    value = arr.shift
    new_arr << value if iterator.even?
    iterator += 1
  end
  new_arr
end

p oddities3([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities3([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities3(['abc', 'def']) == ['abc']
p oddities3([123]) == [123]
p oddities3([]) == []
p oddities3([1, 2, 3, 4, 1]) == [1, 3, 1]
p oddities3([{}, 'nine', [9, true], false, nil]) == [{}, [9, true], nil]

def even_nicer(arr)
  new_arr = []
  arr.length.times { |index| new_arr << arr[index] if index.odd? }
  new_arr
end

p even_nicer([2, 3, 4, 5, 6]) == [3, 5]
p even_nicer([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p even_nicer(['abc', 'def']) == ['def']
p even_nicer([123]) == []
p even_nicer([]) == []
p even_nicer([1, 2, 3, 4, 1]) == [2, 4]
p even_nicer([{}, 'nine', [9, true], false, nil]) == ['nine', false]
