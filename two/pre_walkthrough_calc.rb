# pre_walkthrough_calc.rb
#
# ask for two numbers
# ask for an operation to perform
# perform the operation
# output the result

puts "Hello! I'm a calculator. I can help with simple arithmetic."

def valid?(num)
  if num == "0"
    true
  elsif num != "0" && num.to_i != 0
    true
  else
  end
end

puts ">>> What is the first number you would like to work with?"
first = gets.chomp

while valid?(first) != true do
  puts "Please enter a numerical value..."
  first = gets.chomp
end

puts ">>> What should I do?\n1: Add\n2: Subtract\n3: Multiply\n4: Divide\n"
print "(1-4): "
operator = gets.chomp.to_i

while [1, 2, 3, 4].include?(operator) != true do
  puts ">>> That's not a valid input! Please choose 1, 2, 3, or 4."
  operator = gets.chomp.to_i
end

puts ">>> What is the second number?"
second = gets.chomp

while valid?(second) != true do
  puts ">>> Please enter a numerical value..."
  second = gets.chomp
end

first = first.to_f
second = second.to_f

puts ">>> Calculating..."
case
when operator == 1
  puts first + second
when operator == 2
  puts first - second
when operator == 3
  puts first * second
when operator == 4 && second == 0.0
  puts "UNKNOWN!"
when operator == 4
  puts first / second
end