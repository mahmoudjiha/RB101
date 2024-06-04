# middle_character.rb

def center_of(string)
  length = string.length
  start = length / 2

  if length.even?
    string[(start - 1)..(start)]
  else
    string[start]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
