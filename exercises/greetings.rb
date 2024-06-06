# greetings.rb

# print "What is your name? "
# name = gets.chomp

# if name.include?('!')
#   puts "HELLO #{name.chomp('!').upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end

print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name.chomp!('!')
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
