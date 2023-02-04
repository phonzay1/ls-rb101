# Write a method that returns true if the string passed as an argument is a
# palindrome, false otherwise. A palindrome reads the same forward and backward.
# For this exercise, case matters as does punctuation and spaces.

# - Iterate over the string (string length)/2 times, first comparing the chars at index(0)
#   and index(-1), then increment the first index by 1 and decrement the second index by 1.
# - If at any point the characters don't match, return false and break
# - If the characters all match, return true

# def palindrome?(string)
#   first_index = 0
#   second_index = -1
#   (string.size/2).times do |char|
#     if string[first_index] != string[second_index]
#       return false
#     else
#       first_index += 1
#       second_index -= 1
#     end
#   end
#   true
# end

def palindrome?(input)
  input == input.reverse
end

# puts palindrome?('madam')
# puts palindrome?('Madam')
# puts palindrome?("madam i'm adam")
# puts palindrome?('356653')
# puts palindrome?('preenneerp')
# puts palindrome?('123321')
# puts palindrome?('purple')
# puts palindrome?([2, 4, 6, 6, 4, 2])
# puts palindrome?([8, 7, 9, 0, 2])

# PART 2
# Write another method that returns true if the string passed as an argument is a
# palindrome, false otherwise. This time, however, your method should be
# case-insensitive, and it should ignore all non-alphanumeric characters.
# If you wish, you may simplify things by calling the palindrome? method you wrote
# in the previous exercise.

# - downcase all chars in the string, then put all chars from the string in an array
# - select for alphanumeric characters and delete the rest
# - join characters back into a string
# - run original palindrome method on the new string

def real_palindrome?(string)
  chars = string.downcase.chars
  chars.select! do |char|
    ('a'..'z').include?(char) || (0..9).include?(char)
  end

  new_string = chars.join
  palindrome?(new_string)
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false