# Write a method that takes a positive integer as an argument and returns that
# number with its digits reversed.

# Problem
# Inputs:
# - positive integer
# Outputs:
# - the positive integer with its digits reversed
# Clarifying questions:

# Examples/Test Cases
# reversed_number(12345) == 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # No leading zeros in return value!
# reversed_number(12003) == 30021
# reversed_number(1) == 1

# Data Structure/Algorithm
# - Data type: input is integer. Could change it to a string and call String#reverse!
# or to make it more complicated, change the digits into an array, reverse the array,
# and then rejoin the digits using Array#join which will create a string. Then convert
# the string to an integer
#
# - Split the integer into individual digits. Store the array of digits in a variable, digits.
# - Reverse the elements of the array
# - Join the elements of the array into a string
# - Convert the resulting string into an integer and print it

def reversed_number(integer)
  reversed_string = integer.to_s.reverse!
  reversed_string.to_i
end

# def reversed_number(integer)
#   digits = integer.to_s.split('')
#   digits.reverse!
#   digits.join.to_i
# end

puts reversed_number(12345)
puts reversed_number(12213)
puts reversed_number(456)
puts reversed_number(12000)
puts reversed_number(12003)
puts reversed_number(1)