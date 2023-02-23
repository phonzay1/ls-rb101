# Write a program that asks the user to enter an integer greater than 0, then asks
# if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Problem
# Inputs:
# - an integer greater than 0
# - user's preference to determine sum or product of consecutive integers
# Outputs:
# - depending on user's preference
#   - sum of consecutive integers from 1 - entered integer
#   - product of consecutive integers from 1 - entered integer
# Clarifying questions:

# Examples/Test Cases:
# - integer 1: sum = 1, product = 1
# = integer 5: sum = 15, product = 120
# - integer 6: sum = 21, product = 720
# - integer 7: sum = 28, product = 5040
# - integer 12: sum = 78, product = 479001600

# Data Structure/Algorithm
# - GET positive integer from user. SET variable num, converted to an integer, to store this.
# - GET user preference for sum (s) or product (p). SET variable operator to store
# their preference.
# - Based on user preference:
#   - Iterate through all numbers in range 1 - num, adding or multiplying them all together
# - PRINT the result

# def sum(number)
#   counter = 1
#   sum = 0
#   until counter > number do
#     sum += counter
#     counter += 1
#   end
#   sum
# end

def sum(number)
  (1..number).inject(:+)
end

# def product(number)
#   counter = 1
#   product = 1
#   until counter > number do
#     product *= counter
#     counter += 1
#   end
#   product
# end

def product(number)
  (1..number).inject(:*)
end

def valid_num?(string)
  Integer(string, exception: false)
end

loop do # main loop
  num = ''
  loop do # integer validation loop
    print ">> Please enter an integer greater than 0: "
    num = gets.chomp
    if valid_num?(num)
      break
    else
      puts ">> Sorry, that's not a valid number."
    end
  end

  operator = ''
  loop do # computation loop
    print ">> Enter 's' to compute the sum, 'p' to compute the product: "
    operator = gets.chomp

    if operator == 's'
      puts ">> The sum of the integers between 1 and #{num} is #{sum(num.to_i)}"
      break
    elsif operator == 'p'
      puts ">> The product of the integers between 1 and #{num} is #{product(num.to_i)}"
      break
    else
      puts ">> Sorry, that's not a valid operation."
    end
  end

  puts ">> Would you like to calculate again?"
  again = gets.chomp
  break unless again.downcase.start_with?('y') == true
end

puts "Thank you for calculating. Goodbye!"




