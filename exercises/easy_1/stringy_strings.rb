def stringy(size, option=1)
  numbers = []

  size.times do |index|
    if option == 1
      number = index.even? ? 1 : 0
    elsif option == 0
      number = index.even? ? 0 : 1
    end

    numbers << number
  end

  numbers.join
end

puts stringy(6, 1)
puts stringy(3)
puts stringy(7, 0)
puts stringy(4, 0)
puts stringy(9, 0)

# def stringy(number)
#   if number.even?
#     '10' * (number/2)
#   else
#     ('10' * (number/2)) + '1'
#   end
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'