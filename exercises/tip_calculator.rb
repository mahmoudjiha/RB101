# tip_calculator.rb

print 'What is the bill? '
base = gets.to_f

print "What is the tip percentage? "
percentage = gets.to_f / 100

tip = base * percentage
total = base + tip

puts "\nThe tip is $#{format('%.2f', tip)}"
puts "The total is $#{format('%.2f', total)}"
