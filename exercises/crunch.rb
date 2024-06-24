# crunch.rb

# Given a string argument
# initialize empty string variable previous
# initialize empty string crunched
# Iterate through each character of the string
#   - add current character to crunched unless it = previous
#   - set previous = current character
# return crunched

def crunch(string)
  crunched = ''
  previous_character = ''

  string.chars.each do |current_character|
    crunched += current_character unless current_character == previous_character
    previous_character = current_character
  end

  crunched
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
