# med_2_question_5.rb
require 'pry'

def add_rutabaga(str_or_arr)
  if str_or_arr.is_a?(String)
    str_or_arr += "rutabaga"
  elsif str_or_arr.is_a?(Array)
    str_or_arr + ["rutabaga"]
  end
end

my_string = "pumpkins"
my_string = add_rutabaga(my_string)

my_array = ["pumpkins"]
my_array = add_rutabaga(my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"