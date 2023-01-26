# ask user for 2 numbers
# ask user which operation to perform
# perform operation with the two nubmers
# output the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def operation_to_message(op)
  word =  case op
          when '1'
            'Adding'
          when '2'
            'Subtracting'
          when '3'
            'Multiplying'
          when '4'
            'Dividing'
          end
  word
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(MESSAGES['first_num'])
    number1 = gets.chomp
    if number?(number1)
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['second_num'])
    number2 = gets.chomp
    if number?(number2)
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end

prompt(MESSAGES['operation'])
#  operator_prompt = <<-MSG
#  What operation would you like to perform?
#    1) add
#    2) subtract
#    3) multiply
#    4) divide
#    MSG

#  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['valid_operation'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result =  case operator
            when '1'
              number1.to_f + number2.to_f
            when '2'
              number1.to_f - number2.to_f
            when '3'
              number1.to_f * number2.to_f
            when '4'
              number1.to_f / number2.to_f
            end

  prompt("The result is #{result}")

  prompt(MESSAGES['again'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['end'])
