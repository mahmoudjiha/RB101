# calculator.rb
#
# ask for two numbers
# ask for an operation to perform
# perform the operation
# output the result

require 'pry'
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts ">> #{message}"
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  message = case op
            when '1'
              'Adding'
            when '2'
              'Subtracting'
            when '3'
              'Multiplying'
            when '4'
              'Dividing'
            end
  message
end

loop do
  prompt(MESSAGES['welcome'])

  name = ''
  loop do
    name = gets.chomp

    if name.empty?
      prompt(MESSAGES['valid_name'])
    else
      break
    end
  end

  prompt("Greetings #{name}!")

  number_one = ''

  loop do
    prompt(MESSAGES['first_num'])
    number_one = gets.chomp

    if valid_number?(number_one)
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end

  number_two = ''

  loop do
    prompt(MESSAGES['second_num'])
    number_two = gets.chomp

    if valid_number?(number_two)
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end

  prompt(MESSAGES['operator_prompt'])

  operator = ''

  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['valid_op'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number_one.to_i + number_two.to_i
           when '2'
             number_one.to_i - number_two.to_i
           when '3'
             number_one.to_i * number_two.to_i
           when '4'
             number_one.to_f / number_two.to_f
           end

  prompt("The result is #{result}.")

  prompt(MESSAGES['post_op'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['goodbye'])
