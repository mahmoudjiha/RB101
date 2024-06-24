# alphabetical_numbers.rb

# approach 1
# given an array of integers between 0 and 19
# initialize a constant hash denoting the letter of the alphabet and order
# convert each integer to the equivalent English word
# iterate through array of words
# compare word 1 to word 2
# use multiple reassignment to swap order if needed
# too complicated

# approach 3
# given an array of integers between 0 and 19
# hash with corresponding words in english
# sort based on that
# reorder numbers in array based on result

NUM_WORDS = {
  0 => 'zero',
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen'
}

def alphabetic_number_sort(numbers)
  numbers.sort { |number1, number2| NUM_WORDS[number1] <=> NUM_WORDS[number2] }
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
