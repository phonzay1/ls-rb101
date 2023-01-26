# Ask user for loan amount
# Check that loan amount is a valid number, and convert to a float
# Ask user for APR
# Check that APR is a valid number, and convert to decimal form then to a float
# Ask user for loan duration in years and months
# Assign loan duration to an array with [years, months]
# Convert the numbers in the array to a number equaling the loan duration in months.
# If unable to calculate a valid number, prompt user to try again.
# Calculate monthly interest rate.
# Calculate monthly payment.
# Return loan duration in months, monthly interest rate, and monthly payment amount to user.

def prompt(message)
  puts ">> #{message}"
end

def valid_number?(num)
  (Float(num, exception: false)) && (Float(num) >= 0)
end

prompt("Welcome to the mortgage calculator!
You'll need your loan amount, APR, and loan duration to get started.")

loop do # main loop
  loan_amount = ''
  loop do # loan amount loop
  prompt("Please enter your loan amount. Do not include commas or dollar signs.")
  loan_amount = gets.chomp
  if valid_number?(loan_amount)
    loan_amount = loan_amount.to_f
    break
  else
    prompt("Sorry, that doesn't look like a valid number.")
  end
  end

  apr = ''
  loop do # APR loop
  prompt("Please enter your Annual Percentage Rate (APR).
  An APR of 5% can be entered as 5, 7.75% can be entered as 7.75, etc.")
  apr = gets.chomp
  if valid_number?(apr)
    apr = apr.to_f
    break
  else
    prompt("Sorry, that doesn't look like a valid number.")
  end
  end

  duration_years = ''
  loop do # loan duration loop
  prompt("Please enter your loan duration in years.")
  duration_years = gets.chomp
  if valid_number?(duration_years)
    duration_years = duration_years.to_f
    break
  else
    prompt("Sorry, that doesn't look like a valid number.")
  end
  end

duration_months = duration_years * 12
monthly_interest_rate = (apr * 0.01) / 12

monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-duration_months)))

prompt("Your loan's monthly interest rate is #{monthly_interest_rate * 100}%, the loan duration is #{duration_months} months, and your monthly payment is $#{monthly_payment}.")

prompt("Would you like to perform another calculation? (Enter Y for yes)")
again = gets.chomp
break unless again.downcase.start_with?('y')
end

prompt("Thank you for using the mortgage calculator! Goodbye.")
