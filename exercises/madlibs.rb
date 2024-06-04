# madlibs.rb
TYPES = ['noun', 'verb', 'adjective', 'adverb']

def obtain_word(type)
  modifier = type.length > 4 ? 'an' : 'a'
  print "Enter #{modifier} #{type}: "
  gets.chomp
end

puts "\nDo you #{obtain_word('verb')} your #{obtain_word('adjective')} " \
     "#{obtain_word('noun')} #{obtain_word('adverb')}? That's hilarious!"
