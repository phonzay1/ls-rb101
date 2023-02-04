# Write a program that prompts the user for two positive integers, and then prints
# the results of the following operations on those two numbers: addition,
# subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

# Steps
# - GET two positive integers from the user. SET two different variables to store these
# - PRINT the results of the operations on those two numbers

def prompt(string)
  puts("==> #{string}")
end

prompt("Enter the first number:")
num1 = gets.to_i

prompt("Enter the second number:")
num2 = gets.to_i

prompt("#{num1} + #{num2} = #{num1 + num2}")
prompt("#{num1} - #{num2} = #{num1 - num2}")
prompt("#{num1} * #{num2} = #{num1 * num2}")
prompt("#{num1} / #{num2} = #{num1 / num2}")
prompt("#{num1} % #{num2} = #{num1 % num2}")
prompt("#{num1} ** #{num2} = #{num1 ** num2}")