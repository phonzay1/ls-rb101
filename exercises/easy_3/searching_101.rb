# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5 numbers.

# - GET 6 numbers from the user. SET variables to store each number.
# - SET a variable to hold an empty array. Add the first 5 user numbers to this array.
# - Check if the 6th user number appears in the array. PRINT the result, yes or no.

def valid_num?(number)
  Integer(number, exception: false) || Float(number, exception: false)
end

def contain_num?(array, number)
  if array.include?(number)
    puts "The number #{number} appears in #{array}"
  else
    puts "The number #{number} does not appear in #{array}"
  end
end

loop do # main loop
  first_5_nums = []

  num1 = nil
  loop do # num1 loop
    print ">> Enter the first number: "
    num1 = gets.chomp
    if valid_num?(num1)
      first_5_nums << num1.to_i
      break
    else
      puts "Sorry, that's not a valid number."
    end
  end

  num2 = nil
  loop do # num2 loop
    print ">> Enter the second number: "
    num2 = gets.chomp
    if valid_num?(num2)
      first_5_nums << num2.to_i
      break
    else
      puts "Sorry, that's not a valid number."
    end
  end

  num3 = nil
  loop do # num2 loop
    print ">> Enter the third number: "
    num3 = gets.chomp
    if valid_num?(num3)
      first_5_nums << num3.to_i
      break
    else
      puts "Sorry, that's not a valid number."
    end
  end

  num4 = nil
  loop do # num4 loop
    print ">> Enter the fourth number: "
    num4 = gets.chomp
    if valid_num?(num4)
      first_5_nums << num4.to_i
      break
    else
      puts "Sorry, that's not a valid number."
    end
  end

  num5 = nil
  loop do # num5 loop
    print ">> Enter the fifth number: "
    num5 = gets.chomp
    if valid_num?(num5)
      first_5_nums << num5.to_i
      break
    else
      puts "Sorry, that's not a valid number."
    end
  end

 num6 = nil
  loop do # num6 loop
    print ">> Enter the sixth number: "
    num6 = gets.chomp
    if valid_num?(num6)
      contain_num?(first_5_nums, num6.to_i)
      break
    else
      puts "Sorry, that's not a valid number."
    end
  end

  puts "Would you like to check numbers again?"
  again = gets.chomp
  break unless again.downcase.start_with?('y') == true
end

puts "Thank you. Goodbye!"