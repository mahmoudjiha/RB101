# consecutive_inject.rb

# define methods
def prompt(str)
  puts '>> ' + str
end

# initialize variables
nonzero_integer = ''
compute = ''

# user input loops
loop do
  prompt('Please enter an integer greater than 0:')
  nonzero_integer = gets.to_i
  break if nonzero_integer > 0
  prompt('Invalid response.')
end

loop do
  prompt("Enter 's' to compute the sum, 'p' to compute the product.")
  compute = gets.chomp
  break if compute == 's' || compute == 'p'
  prompt('Invalid response.')
end

# Evaluate inputs & display output
if compute == 's'
  prompt("The sum of the integers between 1 and #{nonzero_integer}"\
         " is #{(1..nonzero_integer).inject(:+)}.")
elsif compute == 'p'
  prompt("The product of the integers between 1 and "\
         "#{nonzero_integer} is #{(1..nonzero_integer).inject(:*)}.")
else
  prompt("You've selected an invalid operation somehow!")
end
