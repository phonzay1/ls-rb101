# Build a program that asks a user for the length and width of a room in meters
# and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Problem
# Inputs:
# - length of room in meters
# - width of room in meters
# Outputs:
# - area of room in square meters
# - area of room in square feet
# Clarifying questions:
# - Does it matter how many significant digits the answers include?

# Examples/Test Cases
# - l: 0, w: 3 -> area = 0
# - l: 2, w: 0 -> area = 0
# - l: 1, w: 3.5 -> area(meters) = 3.5, area(feet) = 37.67365
# - l: 4.2, w: 8.9 -> area(meters) = 37.38, area(feet) = 402.35
# - l: 12, w: 5 -> area(meters) = 60, area(feet) = 645.834
# - l: 534.12, w: 3489.09 -> area(meters) = 1863592.75, area(feet) = 20059526.01

# Data Structure/Algorithm
# - the user input will come in as a string that needs to be converted to a float
# - interpolate the results floats into a string

# - Define a method with two parameters length and width that calculates the area of
# a rectangle in square meters
# - Define a method that takes an area in square meters and converts it to the value in square feet
# - Ask the user for the length of the room in meters. Store their input converted to a float in a variable, length
# - Ask the user for the width of the room in meters. Store their input converted to a float in a variable, width
# - Call the methods and interpolate them into a string that displays the results in
# square meters and square feet

# # My Further Exploration Assignment
# # Allow the user to perform multiple calculations (one after the other) if desired

# def calc_area_meters(length, width)
#   area = length * width
#   area
# end

# def convert_m_ft(area_meters)
#   area_feet = area_meters * 10.7639
#   area_feet
# end

# loop do
#   puts "What's the length of your room in meters?"
#   length = gets.chomp.to_f

#   puts "What's the width of your room in meters?"
#   width = gets.chomp.to_f

#   puts "The area of your room is #{calc_area_meters(length, width).round(2)}\
# square meters (#{convert_m_ft(calc_area_meters(length, width)).round(2)} square feet)"

#   puts "Would you like to perform another calculation? (y for yes)"
#   again = gets.chomp
#   break unless again.downcase.start_with?('y') == true
# end

# puts "Thank you for calculating. Goodbye!"

# FURTHER EXPLORATION
# Modify this program to ask for the input measurements in feet, and display the
# results in square feet, square inches, and square centimeters.

SQFEET_TO_SQMETERS = 0.092903
SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCM = 929.03

loop do
  puts "What's the length of your room in feet?"
  length = gets.chomp.to_f

  puts "What's the width of your room in feet?"
  width = gets.chomp.to_f

  area_feet = (length * width).round(2)
  area_meters = (area_feet * SQFEET_TO_SQMETERS).round(2)
  area_inches = (area_feet * SQFEET_TO_SQINCHES).round(2)
  area_cm = (area_feet * SQFEET_TO_SQCM).round(2)

  puts "The area of your room is #{area_feet} square feet (#{area_meters} square\
 meters, #{area_inches} square inches, #{area_cm} square cm)"

  puts "Would you like to perform another calculation? (y for yes)"
  again = gets.chomp
  break unless again.downcase.start_with?('y') == true
end

puts "Thank you for calculating. Goodbye!"