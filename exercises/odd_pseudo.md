# odd_pseudo.md
Given a valid positive, negative, or zero integer.

Return true if the absolute value of the integer is an odd number.

## Pseudo-code
```
START

# Given a valid positive, negative, or zero integer

IF provided_integer < 0
  provided_integer = provided_integer * -1

IF provided_integer % 2 == 1
  RETURN true
ELSE
  RETURN false

END
```
