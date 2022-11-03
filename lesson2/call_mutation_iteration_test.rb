# call_mutation_iteration_test.rb

words = %w(scooby doo on channel two)

words.each do |str|
  words.delete(str)
  puts words.inspect
end

# Note to self: seems to be an issue with index
