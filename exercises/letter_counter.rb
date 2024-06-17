# letter_counter.rb

# write a method that takes a string with one or more words separated by spaces
# and returns a hash that shows the number of words of different sizes
# keys = word length
# value = number of words of specified length
# split string at spaces
# initialize new array
# iterate through array of words
#   - eval length of word
#   - add length of word to new array
# initialize new empty hash
# set unique values in new array as keys in new hash
# count number of each unique value in array
# return hash

def word_sizes(string)
  words = string.split
  word_lengths = words.map(&:size)
  sizes = word_lengths.uniq
  result = {}

  if !sizes.empty?
    sizes.each do |size|
      count = word_lengths.select { |word_length| word_length == size }
      result[size] = count.length
    end
  end

  result
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') ==
     { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
