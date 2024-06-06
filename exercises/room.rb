# room.rb
# SQUARE_METERS_TO_SQUARE_FEET = 10.7639

# puts 'Enter the length of the room in meters:'
# length = gets.chomp

# puts 'Enter the width of the room in meters:'
# width = gets.chomp

# square_meters = length.to_f * width.to_f
# square_feet = square_meters * SQUARE_METERS_TO_SQUARE_FEET

# puts "The area of the room is #{format("%.2f", square_meters)} square " \
#      "meters (#{format("%.2f", square_feet)} square feet)."

SQUARE_FEET_TO_SQUARE_INCHES = 144
SQUARE_FEET_TO_SQUARE_CENTIMETERS = 929.03

puts 'Enter the length of the room in feet:'
length = gets.chomp

puts 'Enter the width of the room in feet:'
width = gets.chomp

square_feet = length.to_f * width.to_f
square_inches = square_feet * SQUARE_FEET_TO_SQUARE_INCHES
square_centimeters = square_feet * SQUARE_FEET_TO_SQUARE_CENTIMETERS

puts "The area of the room is #{format('%.2f', square_feet)} " \
     "square feet (#{format('%.2f', square_inches)} square " \
     "inches, #{format('%.2f', square_centimeters)} square centimeters)."
