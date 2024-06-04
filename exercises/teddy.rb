# teddy.rb
def print_age(name = 'Teddy')
  # age = (20..200).to_a.sample
  age = rand(20..200)
  
  puts "#{name} is #{age} years old!"
end

print_age('Bob')
print_age('Altair')
print_age('Mufasa')
print_age
print_age('Natalie')
print_age('Nadia')
print_age('Josephina')
