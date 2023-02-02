# Write a method that takes a non-empty string argument, and returns the middle
# character or characters of the argument. If the argument has an odd length,
# you should return exactly one character. If the argument has an even length, you
# should return exactly two characters.

# Problem
# Inputs:
# - non-empty string
# Outputs:
# - middle 1 character (if string is odd length) or 2 characters (if string is even length)
# Clarifying questions:

# Examples/Test Cases
# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'

# Data Structure/Algorithm
# - Determine the length of the string (use String#size) and store this in a variable string_length
# - If the string length is odd, return a string of length 1 starting at index
# string_length/2 (use String#slice)
# - If the string length is even, return a string of length 2 starting at index
# ((string_length/2) - 1) (use String#slice)
# - Notes:
#   -Odd - character at (num/2) + 1, which would have an index of (num/2)
#   -Even - characters at (num/2) and (num/2) + 1, which would have indices of (num/2)-1 and (num/2)

def center_of(str)
  string_length = str.size
  if str.size.odd?
    str.slice(string_length/2)
  else
    str.slice(((string_length/2)-1), 2)
  end
end

puts center_of('I love ruby')
puts center_of('Launch School') == ' '
puts center_of('Launch')
puts center_of('Launchschool')
puts center_of('x')

