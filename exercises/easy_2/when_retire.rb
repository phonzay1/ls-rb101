# Build a program that displays when the user will retire and how many years she
# has to work till retirement.

# Problem
# Inputs:
# - user's age
# - user's desired retirement age
# - current year
# Outputs:
# - year the user will retire
# - how many years the user has to work until retirement
# Clarifying questions:

# Examples/Test Cases
# - age 13, retirement age 65
# - age 52, retirement age 70
# - age 63, retirement age 90

# Data Structure/Algorithm
# - user inputs will come in as strings. These need to be converted to integers

# START
# - GET user's current age. SET variable age to store age, converted to an integer.
# - GET user's desired retirement age. SET variable retire_age to store this, converted to an integer.
# - SET variable years_to_retire to calculate and store years to retirement (retire_age - age)
# SET variable retirement_year to calculate and store retirement year (current year + years_to_retire)
# - PRINT results

print "How old are you?: "
age = gets.to_i

print "At what age would you like to retire?: "
retire_age = gets.to_i

years_to_retire = retire_age - age
retirement_year = Time.now.year + years_to_retire

puts "It's #{Time.now.year}. You'll retire in #{retirement_year}."
puts "You have #{years_to_retire} more years of work to go!"
