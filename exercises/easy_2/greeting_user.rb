# Write a program that will ask for user's name. The program will then greet the
# user. If the user writes "name!" then the computer yells back to the user.

# Problem
# Inputs:
# - user's name
# Outputs:
# - if name is entered without punctuation: greeting with the user's name, using
# regular capitalization
# - if name is entered with a '!' at the end: all caps greeting with the user's name
# Clarifying questions:

# Examples/Test Cases
# - Bob
# - Bob!
# - MARY
# - MARY!

# Data Structure/Algorithm
# - strings

# - GET user name. SET variable name to store this.
# - Determine if name ends with a '!' (use String#end_with?)
# - If name does not end with '!', PRINT a greeting to name with regular capitalization
# - If name ends with a '!', PRINT an all caps/excited greeting to name

print "What's your name?: "
name = gets.chomp

if name.end_with?("!")
  puts "HELLO #{name.upcase.delete_suffix('!')}. IT SURE IS LOUD IN HERE!!!!!!!"
else
  puts "Hello #{name}."
end

# FURTHER EXPLORATION
# Try modifying our solution to use String#chomp! and String#chop!, respectively.

# print 'What is your name? '
# name = gets.chomp

# if name[-1] == '!'
#   name = name.chomp
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end