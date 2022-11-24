# how_old_is_teddy.rb

# Build a program that randomly generates and prints Teddy's age. To get the
# age, you should generate a random number between 20 and 200.

# Input: a range of numbers
# Output: "Teddy is x years old!" , where x is an integer between 20 and 200
#
# Requirements:
# >> Age must be a randomly generated integer in the range of 20 and 200
# >> Implicit: no indication of inclusion or exclusion of 20 or 200
# >> String must be printed to the string matching the format above
#
# Examples/test cases:
# => Teddy is 69 years old!
#
# Data structure: range, string
#
# Algorithm:
# Generate a random integer between 20 and 200
# Print a string "Teddy is x years old!", where x is the randomly generated int

def randomize(range)
  rand(range) #=> refactored from range.to_a.sample
end

def display_teddys_age
  puts "Teddy is #{randomize(20..200)} years old!"
end

display_teddys_age

# refactored
DEFAULT_NAME = 'Teddy'
def display_age(name = DEFAULT_NAME)
  puts "#{name} is #{randomize(20..200)} years old!"
end

display_age('Altair')
display_age('Luna')
display_age
