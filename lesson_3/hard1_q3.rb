# hard1_q3.rb

# code group A

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"     # => one is: one
puts "two is: #{two}"     # => two is: two
puts "three is: #{three}" # => three is: three

# code group B

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"     # => one is: one
puts "two is: #{two}"     # => two is: two
puts "three is: #{three}" # => three is: three

# code group C

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"     # => one is: two
puts "two is: #{two}"     # => two is: three
puts "three is: #{three}" # => three is: one