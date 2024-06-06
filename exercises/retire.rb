# retire.rb

print "What is your age? "
current_age = gets.to_i

print "At what age would you like to retire? "
retirement_age = gets.to_i

years_remaining = retirement_age - current_age

current_year = Time.new.year
retirement_year = current_year + years_remaining

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_remaining} years of work to go!"
 