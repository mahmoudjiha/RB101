# calculator.rb
#
# ask for two numbers
# ask for an operation to perform
# perform the operation
# output the result

def prompt(message)
  puts ">> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

loop do
  prompt("Welcome to Calculator! Enter your name:")

  name = ''
  loop do
    name = gets.chomp

    if name.empty?
      prompt("Please use a valid name.")
    else
      break
    end
  end

  prompt("Greetings #{name}!")

  number_one = ''

  loop do
    prompt("What's the first number?") 
    number_one = gets.chomp

    if valid_number?(number_one)
      break
    else
      prompt("Something went wrong...please enter a valid number")
    end
  end

  number_two = ''

  loop do
    prompt("What's the second number?")
    number_two = gets.chomp

    if valid_number?(number_two)
      break
    else
      prompt("Something went wrong...please enter a valid number")
    end
  end

    operator_prompt = <<-MSG
      What operation would you like to perform?
      1) add
      2) subtract
      3) multiply
      4) divide
    MSG

  prompt("#{operator_prompt}")
  
  operator = ''

  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Please choose 1, 2, 3, or 4")
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

  prompt("Do you want to perform another calculation? (Y to go again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator. Good bye!")