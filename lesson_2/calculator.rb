# calculator.rb
##  This program will prompt the user for two numbers and a simple arithmetic
##  operation to be performed, perform the operation, and print the result to
##  the screen.

def prompt(string)
    puts '>>> ' + string
end

TERMS = {
    1 => ['add', 'to'],
    2 => ['subtract', 'and'],
    3 => ['multiply', 'with'],
    4 => ['divid', 'by']
}

prompt('What is the first number?')
first_number = gets.chomp.to_f

prompt('What is the second number?')
second_number = gets.chomp.to_f

prompt('What operation would you like to perform?')
print "1. Addition\n2. Subtraction\n3. Multiplication\n4. Division\nEnter an integer 1-4: "
operator = gets.chomp.to_i

result = case operator
         when 1
            first_number + second_number
         when 2
            first_number - second_number
         when 3
            first_number * second_number
         when 4
            if second_number == 0
                'Zero division error!'
            else
                first_number / second_number
            end
        end

if result.is_a?(String)
    puts result
else
    puts "The result of #{TERMS[operator].first}ing #{first_number} #{TERMS[operator].last} #{second_number} is:\n#{result.round(2)}"
end
