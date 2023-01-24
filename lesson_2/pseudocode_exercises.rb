=begin
a method that returns the sum of two integers
START
GET two integers from user
  SET variable 1 = integer 1
  SET variable 2 = integer 2
SET result = variable 1 + variable 2
PRINT result
END

a method that takes an array of strings, and returns a string that is all those strings concatenated together
START
# Given an array of strings called "strings"
SET iterator = 0
SET concat_string = WHILE iterator < number of items in "strings"
                    concatenate each string in "strings" at index[iterator]
                    iterator = iterator + 1
PRINT concat_string
END

a method that takes an array of integers, and returns a new array with every other element from the original array
START
# Given an array of integers called "numbers"
SET iterator = 0
SET new_array = empty array

WHILE iterator < number of items in "numbers"
push numbers from "numbers" at index[iterator] into new_array
skip (go to the next iteration) if iterator is odd
iterator = iterator + 1

PRINT new_array
END

a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil
START
# Given a string called "string"
GETS character to be accounted for from user
SETS user character to "given_char"
SPLITS "string" into an array of each character, called "chars"

SETS iterator = 0
SETS counter = 0

WHILE iterator < number of items in "chars"
  IF character in "chars" at index[iterator] = given_char
    counter = counter + 1
  
  IF counter == 3
    PRINT iterator
    BREAK

iterator = iterator + 1

IF counter <3 PRINT nil
END

a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes.
START
# Given two arrays of numbers called array_1 and array_2

SETS iterator = 0
SETS new_array = empty array

WHILE iterator < number of items in array_1 OR array_2
  add (push) item from array_1 at index[iterator] to new_array
  add item (push) from array_2 at index[iterator] to new_array

iterator = iterator + 1

PRINT new_array
END




  