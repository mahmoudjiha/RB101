# med_1_question_5.rb

LIMIT = 15 # <= refactored to constant assuming the limit should always be 15

def fib(first_num, second_num)
  while first_num + second_num < LIMIT
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# The variable named limit is in the external scope relative to the method and 
# cannot be accessed. Changing this variable to a constant or passing it into
# the method as an argument would fix this issue.
