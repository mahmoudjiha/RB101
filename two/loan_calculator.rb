# loan_calculator.rb

def prompt(input)
  puts ">>> #{input}"
end

def valid_int?(num)
  num.to_i.to_s == num
end

def valid_float?(num)
  num.to_f.to_s == num || num.to_f.to_s + '0' == num
end

def valid_num?(num)
  valid_float?(num) || valid_int?(num)
end

def monthly_payment(total, apr, yrs)
  mpr = apr.to_f / 1200
  total.to_f * (mpr / (1 - (1 + mpr)**((-yrs.to_i * 12))))
end

loan_amount = ''
years = ''
apr = ''
continue = ''

loop do
  prompt('Welcome to loan calculator! This program will help you calculate your
          monthly mortgage payment.')

  loop do
    prompt('What is the loan amount?')
    loan_amount = gets.chomp
    break if valid_num?(loan_amount)
    prompt("That's not a valid input. Please enter a positive number")
  end

  loop do
    prompt('What is the loan APR?')
    print '%: '
    apr = gets.chomp
    break if valid_num?(apr)
    prompt("That's not a valid input. Enter 1 for 1%, 2 for 2%, etc.")
  end

  loop do
    prompt('What is the loan duration in years?')
    years = gets.chomp
    break if valid_num?(years)
    prompt("That's not a valid input. Please enter the loan duration in years")
  end

  prompt("The monthly payment is $#{monthly_payment(loan_amount, apr, years)}!")

  prompt("Would you like to calculate a different monthly payment?")
  continue = gets.chomp.downcase
  break if continue != y
end

prompt("Thank you for using the loan calculator. Goodbye!")
