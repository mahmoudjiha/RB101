# calculator.rb
##  This program will prompt the user for two numbers and a simple arithmetic
##  operation to be performed, perform the operation, and print the result to
##  the screen.

def prompt(string)
  puts ">>> #{string}"
end

def valid_name?(string)
  string != '0' && string.to_i.to_s == '0'
end

def valid_number?(string)
  string == '0' || string.to_i != 0
end

def valid_operator?(string)
  %w(1 2 3 4).include?(string)
end

ERROR_MESSAGE = "That doesn't look like a valid input...try again"

TERMS = {
  '1' => ['add', 'to'],
  '2' => ['subtract', 'and'],
  '3' => ['multiply', 'with'],
  '4' => ['divid', 'by']
}

OPERATIONS = <<-STR
      1. Addition
      2. Subtraction
      3. Multiplication
      4. Division
STR

prompt('Welcome to Calculator!')
name = ''

loop do
  prompt('What is your name?')
  name = gets.chomp

  break if valid_name?(name)
  prompt(ERROR_MESSAGE)
end

prompt("Alright #{name}, let's do this!")

loop do
  first_number = ''
  second_number = ''
  operator = ''

  loop do
    prompt('What is the first number?')
    first_number = gets.chomp

    break if valid_number?(first_number)
    prompt(ERROR_MESSAGE)
  end

  loop do
    prompt('What is the second number?')
    second_number = gets.chomp

    break if valid_number?(second_number)
    prompt(ERROR_MESSAGE)
  end

  prompt("What operation would you like to perform?\n#{OPERATIONS}")

  loop do
    prompt('Enter an integer 1-4: ')
    operator = gets.chomp

    break if valid_operator?(operator)
    prompt(ERROR_MESSAGE)
  end

  result = case operator
           when '1'
             first_number.to_i + second_number.to_i
           when '2'
             first_number.to_i - second_number.to_i
           when '3'
             first_number.to_i * second_number.to_i
           when '4'
             if second_number == '0'
               'Zero division error!'
             else
               first_number.to_f / second_number.to_f
             end
           end

  if result.is_a?(String)
    prompt(result)
  else
    prompt("The result of #{TERMS[operator].first}ing #{first_number} " \
           "#{TERMS[operator].last} #{second_number} is: #{result.round(2)}")
  end

  prompt('Perform another calculation?')
  print('(Y/n): ')
  user_input = gets.chomp

  break if user_input[0].upcase != 'Y'
end

prompt("Thank you for using Calculator, #{name}!")
