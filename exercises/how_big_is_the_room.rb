# how_big_is_the_room.rb

# Build a program that asks a user for the length and width of a room in meters
# and then displays the area in square meters and square feet

# Input: length and width strings from the user
# Output: A string - "The area of the room is x square meters (y square feet)."
#         where x is an integer corresponding to the area of the room in square
#         meters and y is an integer corresponding to the area of the room in
#         square feet.
#
# Requirements:
# >> User input are strings of numerical chars corresponding to length/width
# >> User input is in meters
# >> Implicit: conversion to float
# >> Output string preformatted as above with calculated areas
# >> Implicit: remove newline characters from user input
# >> Implicit: sq ft floats rounded to two decimal places
#
# Examples/Test cases:
# 10m, 7m => "The area of the room is 70.0 square meters (753.47 square feet)."
# 0m input => "The area of the room is 0.0 square meters (0.0 square feet)."
# Large numbers?
#
# Data Structure: string inputs, converted to floats. Output string
# with calculated values
#
# Algorithm
#
# START
#
# Given the conversion 1 square meter == 10.7639 square feet
#
# SET conversion_factor = 10.7639
#
# SET square_area(length, width)
#   - RETURN length * width
#
# PRINT length_prompt
# GET length_in_meters
#
# PRINT width_prompt
# GET width_in_meters
#
# SET room_area_meters = square_area(length_in_meters, width_in_meters)
# SET room_area_feet = room_area_meters * CONVERSION_FACTOR
#
# PRINT 'The area of the room is ' + room_area_meters + 'square meters' + ' ('
#        room_area_feet + ' square feet).'
#
# END

# SQ_METERS_TO_SQ_FEET = 10.7639
SQ_FEET_TO_SQ_CENTIMETERS = 929.03
SQ_FEET_TO_SQ_INCHES = 144

LENGTH_PROMPT = '>>> Enter the length of the room in feet:'
WIDTH_PROMPT = '>>> Enter the width of the room in feet:'

puts LENGTH_PROMPT
length_in_feet = gets.to_f
puts WIDTH_PROMPT
width_in_feet = gets.to_f

square_feet = (length_in_feet * width_in_feet).round(2)
square_inches = (square_feet * SQ_FEET_TO_SQ_INCHES).round(2)
square_centimeters = (square_feet * SQ_FEET_TO_SQ_CENTIMETERS).round(2)

puts "The area of the room is #{square_feet} square feet, "\
     "which is equivalent to #{square_inches} square inches"\
     " or #{square_centimeters} square centimeters."
