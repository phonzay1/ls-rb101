# Write a method that returns true if its integer argument is palindromic, false
# otherwise. A palindromic number reads the same forwards and backwards.

# - Convert the integer to a string
# - check if the string is equal to itself reversed

def palindromic_number?(integer)
  string = integer.to_s
  string == string.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
puts palindromic_number?(0003000) == true