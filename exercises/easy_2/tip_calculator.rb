# Create a simple tip calculator. The program should prompt for a bill amount and
# a tip rate. The program must compute the tip and then display both the tip and
# the total amount of the bill.

# Problem
# Inputs:
# - bill amount
# - tip rate
# Outputs:
# - tip amount
# - total bill amount, including tip
# - Print the tip and total bill amount
# Clarifying questions:

# Examples/Test Cases
# - bill $235.62, tip 18% -> tip 42.41, total 278.03
# - bill $18.29, tip 15% -> tip 2.74, total 21.03
# - bill $75, tip 20% -> tip 15, total 90
# - bill $80.35, tip 17.5% - > tip 14.06, total 94.41

# Data Structure/Algorithm
# - bill amount and tip rate will be entered as strings. To calculate, they need to
# be converted to floats

# - GET bill amount from user, SET a variable bill to store bill amount converted to a float
# - GET tip rate from user, SET a variable tip_rate to store tip rate converted to a float
# - SET variable tip_amount to calculate and store tip amount (bill * tip_rate * 0.01)
# - SET variable total_bill to calculate and store total bill amount (bill + tip_amount)
# - PRINT a string with total_bill interpolated into it

print ">> What's the bill amount? (do not include $ signs or commas): "
bill = gets.to_f

print ">> What's the tip rate? (do not include % signs): "
tip_rate = gets.to_f

tip_amount = bill * tip_rate * 0.01
total_bill = bill + tip_amount

puts ">> The tip is $#{sprintf('%.2f', tip_amount)} and the total bill is $#{sprintf('%.2f', total_bill)}"
