# letter_counter.rb

ALPHABET = /[a-zA-Z]/

def word_sizes(string)
  words = string.split

  word_lengths = words.map do |word|
    word.chars.select { |character| ALPHABET.match?(character) }.join.size
  end

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

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
