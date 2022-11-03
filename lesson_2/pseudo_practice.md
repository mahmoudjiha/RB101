# pseudo_practice.rb

## Write casual and formal code for the following examples


 a method that returns the sum of two integers
   casual
     Given two integers
     Add the two integers
     Return the resulting value

   formal
     START

     Given integer1 and integer2
     SET sum = integer1 + integer2
     PRINT sum

     END

 a  method that takes an array of strings and returns them concatenated
   casual
     Given an array of strings
     Create an empty string
     Iterate through the array one by one, starting with the first element
       - add the string to the empty string
       - add a trailing whitespace
     After iterating through each element, return the concatenated string

    formal
      START
      Given an array of strings called "string_array"
      SET iterator = 1
      SET concatenated_string = an empty string

      WHILE iterator <= length of string_array
        concatenated_string += element in string_array at index + whitespace
        iterator = iterator + 1
      PRINT concatenated_string
      END

 a method that takes an array of integers, and returns a new array with every
 other element from the original array, starting from the first element
  casual
    Given an array of integers
    Create a new empty array
    Iterate through every other element in the array, starting from the 1st
      - add the element to the new array
      - skip the next element in the array
    After iterating through/skipping each element in array, return the new array

  formal
    START
    Given an array of integers called "original_array"
    SET iterator = 1
    SET new_array = an empty array

    WHILE iterator <= length of original_array
      new_array += element in original array at index
      iterator + 2
    PRINT new_array
    END

 a method that determines the index of the 3rd occurrence of a given character
 in a string. if the given character doesn't occur three times, return ```nil```
  casual
    Given a character in a string
    Iterate through each character in the string
    Return the index value of the third occurrence of the character
    If the character is present less than three times, return a nil value

  formal
    START
    Given a character called "character" in a string called "character_string"
    SET iterator = 1
    SET occurrence = 0
    WHILE iterator <= length of character_string
      IF character at index in character_string == character
        occurrence = occurrence + 1
        IF occurrence = 3
          PRINT index of current character
        iterator = iterator + 1
      ELSE
        iterator = iterator + 1
      END

a method that takes two arrays of numbers and returns the result of merging
the arrays. elements of the 1st array should be at even indexes in the returned
array and elements of the 2nd array should be at odd indexes.
  casual
    Given two arrays of numbers of the same length
    Iterate through an element in the 1st array, then in the 2nd array, until
      you have iterated through all elements in both arrays
    Return the new array

  formal
    START
    Given two equal length arrays of numbers "first_array" and "second_array"
    SET iterator = 1
    SET combined_array = an empty array
    WHILE iterator <= length of one of the arrays
      combined_array += element at index of first_array
      combined_array += element at index of second_array
      iterator = iterator + 1
    PRINT combined_array
    END
