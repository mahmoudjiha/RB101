# letter_swap.rb

def swap(string)
  words = string.split(' ')
  new_string = ''

  words.each do |word|
    characters = word.chars

    word[0]= characters[-1]
    word[-1]= characters[0]

    new_string << "#{word} "
  end

  new_string[-1] == ' ' ? new_string[0...-1] : new_string
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
