# loan_calculator.rb
## This program will prompt the user to enter the total loan amount, the annual
## percentage rate, and the duration of the loan in months and will print the
## monthly payment associated with these values to the screen.

require 'yaml'
MESSAGES = YAML.load_file('loan_messages.yml')

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

def convert_number(string)
  string.include?('.') ? string.to_f : string.to_i
end

def display_error_message(type)
  prompt(MESSAGES['errors'][type])
end

def obtain_value(type)
  value = ''
  loop do
    prompt(MESSAGES['input_requests'][type])
    value = gets.chomp

    if %w(total apr duration).include?(type)
      break if valid_number?(value)
    elsif type == 'name'
      break if valid_name?(value)
    end
    display_error_message(type)
  end

  type == 'name' ? value : convert_number(value)
end

def convert_to_monthly_proportion(annual_percentage)
  annual_percentage.to_f / 12 / 100
end

def calculate_monthly_payment(total, annual_percentage, months)
  monthly_rate = convert_to_monthly_proportion(annual_percentage)

  total * (monthly_rate / (1 - ((1 + monthly_rate)**(-months))))
end

def print_greeting_or_closing(type, name = 'Bob')
  if type == 'closing'
    prompt("#{MESSAGES[type]} #{name}!")
  else
    prompt(MESSAGES[type])
  end
end

def print_result(total, annual_percentage, months)
  payment = calculate_monthly_payment(total, annual_percentage, months)
  result = "#{MESSAGES['result']['start']} $#{total} with " \
           "#{annual_percentage}% APR paid over #{months} months, " \
           "the monthly payment will be $#{format('%.2f', payment)}!"

  prompt(result)
end

# main loop
print_greeting_or_closing('greeting')
name = obtain_value('name')

loop do
  loan_total = obtain_value('total')
  apr = obtain_value('apr')
  duration_in_months = obtain_value('duration')

  print_result(loan_total, apr, duration_in_months)

  prompt(MESSAGES['restart_calculator'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

print_greeting_or_closing('closing', name)
