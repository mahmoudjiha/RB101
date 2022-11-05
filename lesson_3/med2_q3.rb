# med_2_question_3.rb

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# => My string looks like this now: pumpkins

# The 1st method parameter initializes a var that references the same
# object (value) as the argument my_string. The initialized var is reassigned
# to a different area in memory with the value "pumpkins rutabaga". The original
# object is unchanged.

puts "My array looks like this now: #{my_array}"
# => My array looks like this now:
#    pumpkins
#    rutabaga
# Correction - string interpolation will not generate a new line for ea. element
# => My array looks like this now: ["pumpkins", "rutabaga"]

# The 2nd method parameter initializes a var that references the same object
# as my_array. The initialized var then calls the method Array#<<, which
# mutates the value in the area of memory referenced by the initialized var
# and the argument an_array_param.
