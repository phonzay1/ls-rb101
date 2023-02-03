# Print all odd numbers from 1 to 99, inclusive, to the console, with each number
# on a separate line.

# Problem
# Inputs:
# - numbers from 1-99
# Outputs:
# - all odd numbers from 1-99(inclusive) printed with each number on a separate line
# Clarifying questions:

# Examples/Test Cases

# Data Structure/Algorithm
# - data type: integers

# - Iterate over each number in the range 1-99(inclusive), checking each number to see if it's odd.
# If it is, PRINT it to the screen on its own line. If it's not, go to the next number.

# (1..99).each do |num|
#   puts num if num.odd?
# end

# FURTHER EXPLORATION
# Repeat this exercise with a technique different from the one you just used, and
# different from the solution shown above. You may want to explore the use Integer#upto
# or Array#select methods, or maybe use Integer#odd?

odd_nums = (1..99).to_a.select do |num|
              num.odd?
            end

p odd_nums
puts odd_nums
