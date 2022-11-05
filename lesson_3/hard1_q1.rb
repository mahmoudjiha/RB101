# hard1_q1.rb

if false
  greeting = 'hello world'
end

p greeting # => returns an error?

# if conditionals do not create a new scope. if the conditional had evaluated
# truthy-ily, then greeting would return 'hello world' because greeting would
# have been initialized.

# not entirely sure why it returns nil instead of an error.

# from solution: when a variable is initialized in an if clause & the clause is
# not executed, the variable is initialized to nil.