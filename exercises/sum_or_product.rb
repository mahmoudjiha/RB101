# sum_or_product.rb
VALID_OPERATIONS = ['s', 'p']

def prompt(string)
  puts ">>> #{string}"
end

def compute_sum(number)
  1.upto(number).inject(:+)
end

def compute_product(number)
  1.upto(number).inject(:*)
end

def valid_operation?(operator)
  VALID_OPERATIONS.include?(operator[0].downcase)
end

prompt('Please enter an integer greater than 0:')
number = gets.to_i
operation = ''

loop do
  prompt("Enter 's' to compute the sum, 'p' to compute the product.")
  operation = gets.chomp
  break if valid_operation?(operation)
end

# if operation[0].downcase == 's'
#   result_keyword = 'sum'
#   result = compute_sum(number)
# elsif operation[0].downcase == 'p'
#   result_keyword == 'product'
#   result = compute_product(number)
# end

result_keyword, result = case operation
                         when 's'
                           ['sum', compute_sum(number)]
                         when 'p'
                           ['product', compute_product(number)]
                         end

prompt("The #{result_keyword} of the integers " \
       "between 1 and #{number} is #{result}.")
