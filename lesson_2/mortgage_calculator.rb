# Ask user for loan amount
# Check that loan amount is a valid number, and convert to a float
# Ask user for APR
# Check that APR is a valid number, and convert to a float
# Ask user for loan duration in years (months optional as decimal fraction)
# Check that loan duration is a valid number, and convert to a float
# Calculate loan duration in months
# Calculate monthly interest rate
# Calculate monthly payment
# Return loan duration in months and monthly interest rate/payment to user.

def prompt(message)
  puts ">> #{message}"
end

def positive_float?(num)
  (Float(num, exception: false)) && (Float(num) > 0)
end

def valid_apr?(num)
  (Float(num, exception: false)) && (Float(num) >= 0)
end

def prompt_user_loan_amount
  loan_amount = ''
  loop do
    prompt("Please enter your loan amount.")
    prompt("Do not include commas or dollar signs: ex. enter $50,000 as 50000")
    loan_amount = gets.chomp
    if positive_float?(loan_amount)
      return loan_amount.to_f
    else
      prompt("Sorry, that doesn't look like a valid number.")
    end
  end
end

def prompt_user_apr
  apr = ''
  loop do
    prompt("Please enter your Annual Percentage Rate (APR).")
    prompt("Do not include the % symbol: ex. enter 5.5% as 5.5")
    apr = gets.chomp
    if valid_apr?(apr)
      return apr.to_f
    else
      prompt("Sorry, that doesn't look like a valid number.")
    end
  end
end

def prompt_user_duration
  duration_years = ''
  loop do
    prompt("Please enter your loan duration in years.")
    duration_years = gets.chomp
    if positive_float?(duration_years)
      return duration_years.to_f
    else
      prompt("Sorry, that doesn't look like a valid number.")
    end
  end
end

def calc_monthly_payment(loan_amount, apr, duration_years)
  duration_months = duration_years * 12
  monthly_interest_rate = (apr * 0.01) / 12

  if apr == 0.0
    monthly_payment = loan_amount / duration_months
  else
    monthly_payment = loan_amount *
                      (monthly_interest_rate /
                      (1 - (1 + monthly_interest_rate)**(-duration_months)))
  end
  monthly_payment
end

def calc_months(years)
  months = years * 12
  months
end

def calc_monthly_interest_rate(apr)
  monthly_interest_rate = (apr * 0.01) / 12
  monthly_interest_rate
end

prompt("Welcome to the mortgage calculator!")
prompt("You'll need your loan amount, APR, and loan duration to get started.")

loop do
  loan_amount = prompt_user_loan_amount
  apr = prompt_user_apr
  duration_years = prompt_user_duration

  monthly_payment = calc_monthly_payment(loan_amount, apr, duration_years)

  prompt("Your loan amount is $#{format('%.2f', loan_amount)}")
  prompt("Your loan duration is #{calc_months(duration_years).round} months")
  prompt("Your monthly interest rate is #{format('%.2f', (calc_monthly_interest_rate(apr) * 100))}%")
  prompt("Your monthly payment is $#{format('%.2f', monthly_payment)}")

  prompt("Would you like to perform another calculation? (Enter Y for yes)")
  again = gets.chomp
  break unless again.downcase.start_with?('y')
end

prompt("Thank you for using the mortgage calculator! Goodbye.")
