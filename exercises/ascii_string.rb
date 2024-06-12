# ascii_string.rb

def ascii_value(string)
  string.chars.map(&:ord).sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

puts 'Four score'.ord.chr == 'F'
