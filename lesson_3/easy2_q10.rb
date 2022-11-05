# easy_2_question_10.rb

title = 'Flintstone Family Members'

((40 - title.length) / 2).times do |int|
  title.prepend(' ')
  title.concat(' ')
end

puts title

# from solution: String#center