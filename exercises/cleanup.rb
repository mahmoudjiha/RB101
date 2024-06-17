# cleanup.rb

# split into individual characters
# iterate through characters
#   - add characters to word if included in ALPHABET constant
#   - add to array, then add a space, and break
#   - join array elements together

ALPHABET = 'abcdefghijklmnopqrstuvwxyz'
SPACE = ' '


def cleanup(string)
  characters = string.chars
  cleaned_up = []

  until characters.empty?
    cleaned_word = ''

    loop do
      break unless ALPHABET.include?(characters[0])
      cleaned_word += characters.shift
    end

    cleaned_up << cleaned_word
    cleaned_up.delete('')
    cleaned_up << SPACE unless cleaned_up.last == SPACE
    characters.shift
    cleaned_word = ''
  end

  cleaned_up.join
end

puts cleanup("---what's my +*& line?") == ' what s my line '
