# Programmatically determine if 42 lies between 10 and 100.

# - Convert the range 10..100 to an array containing all of the range elements
# - Use the Array#include? method

p (10..100).to_a.include?(42)