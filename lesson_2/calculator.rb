# calculator.rb
##  This program will prompt the user for two numbers and a simple arithmetic
##  operation to be performed, perform the operation, and print the result to
##  the screen.

require 'yaml'
MESSAGES = YAML.load_file('messages.yml')

def prompt(string)
  puts ">>> #{string}"
end

def format_float(string)
  return ("#{string}0") if string[-1] == '.'
  trailing_zeros = 0
  decimal_digits = string.split('.').last

  if string[-1] == '0'
    iterator = 1
    loop do
      break if decimal_digits[-iterator] != '0'
      trailing_zeros += 1
      iterator += 1
    end
  end

  final_length = string.length - trailing_zeros

  if trailing_zeros == decimal_digits.length
    string[0...(final_length + 1)]
  else
    string[0...final_length]
  end
end

def valid_name?(string)
  string != '0' && string.to_i.to_s == '0'
end

def valid_number?(string)
  if string.include?('.')
    format_float(string) == string.to_f.to_s
  else
    string == string.to_i.to_s
  end
end

def valid_operator?(string)
  %w(1 2 3 4).include?(string)
end

def convert_number(string)
  string.include?('.') ? string.to_f : string.to_i
end

def error_message(expected_input)
  "#{MESSAGES['invalid_entry']} #{expected_input}! #{MESSAGES['try_again']}"
end

def result_message(number1, number2, operator, calculated_result)
  return MESSAGES['zero_division'] if number2 == 0

  verb, modifier = MESSAGES['verbs_and_modifiers'][operator].values

  "The result of #{verb} #{number1} #{modifier} " \
    "#{number2} is: #{calculated_result.round(2)}."
end

prompt(MESSAGES['welcome'])
name = ''

loop do
  prompt(MESSAGES['name_prompt'])
  name = gets.chomp

  break if valid_name?(name)
  prompt(error_message('name'))
end

prompt("#{MESSAGES['begin']} #{name}!")

loop do
  first_number = ''
  second_number = ''
  operator = ''

  loop do
    prompt(MESSAGES['first_number'])
    first_number = gets.chomp

    break if valid_number?(first_number)
    prompt(error_message('number'))
  end

  loop do
    prompt(MESSAGES['second_number'])
    second_number = gets.chomp

    break if valid_number?(second_number)
    prompt(error_message('number'))
  end

  prompt(MESSAGES['which_operation'])

  loop do
    prompt(MESSAGES['request_integer'])
    operator = gets.chomp

    break if valid_operator?(operator)
    prompt(error_message('operator'))
  end

  first_number = convert_number(first_number)
  second_number = convert_number(second_number)

  result = case operator
           when '1'
             first_number + second_number
           when '2'
             first_number - second_number
           when '3'
             first_number * second_number
           when '4'
             first_number.to_f / second_number
           end

  prompt(result_message(first_number, second_number, operator, result))

  print(MESSAGES['restart_calculator'])
  user_input = gets.chomp

  break if user_input[0].upcase != 'Y'
end

prompt("#{MESSAGES['goodbye']} #{name}!")
