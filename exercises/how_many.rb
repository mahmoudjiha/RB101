# how_many.rb

def count_occurrences(arr)
  occurences_hash = {}

  arr.uniq.each do |element|
    occurences_hash[element] = Integer
  end

  occurences_hash.each do |key, value| 
    occurences_hash[key] = arr.count(key)
    puts "#{key} => #{occurences_hash[key]}"
  end
end

# Array#uniq is returning a new array, so the code could be refactored to add
# key values in the same step on line 7.

# refactored; added case insensitive functionality
def count_occurrences2(arr)
  occurences = {}

  new_arr = arr.map { |element| element.downcase }

  new_arr.uniq.each do |element|
    occurences[element] = new_arr.count(element)
  end
  
  occurences.each do |key, value| 
    puts "#{key} => #{value}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

count_occurrences(vehicles)
puts '----------------------'
count_occurrences2(vehicles)