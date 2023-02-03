# Build a program that randomly generates and prints Teddy's age. To get the age,
# you should generate a random number between 20 and 200.

# Problem
# Inputs:
# Outputs:
# - a random number between 20 and 200
# - a string indicating this number as Teddy's age
# Clarifying questions:
# - Should 20 and 200 be included as options for the random number?

# Examples/Test Cases

# Data Structure/Algorithm
# - Generate a random number between 20 and 200 (use Kernel#rand)
# - Interpolate this number into the string "Teddy is __ years old!" and print
# the string

# Further Exploration:
# Modify this program to ask for a name, and then print the age for that person.
# For an extra challenge, use "Teddy" as the name if no name is entered.

# Problem
# Inputs:
# - user's name, with "Teddy" as the default name
# Outputs:
# - string indicating the user's age as a randomly generated number 20-200

# Examples/Test Cases

# Data Structure/Algorithm
# - Ask for the user's name and store their input as a variable, name
# - If they don't enter anything, default the name to "Teddy"
# - Interpolate their name into the string indicating their age, using Kernel#rand
# to generate a random number 20-200

name = ''

def set_name
  puts "What's your name?"
  name = gets.chomp
  name.empty? ? 'Teddy' : name
end

puts "#{set_name} is #{rand(20..200)} years old!"