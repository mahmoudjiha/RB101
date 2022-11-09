# easy1_q6.rb

# method 1
famous_words = 'seven years ago...'
famous_words.insert(0, 'four score and ')

# method 2
famous_words = 'seven years ago...'
famous_words.gsub!('seven', 'four score and seven')

# method 3
famous_words = 'seven years ago...'
'four score and ' << famous_words

# method 4
famous_words << 'four score and ' << famous_words.slice!(0..17)
