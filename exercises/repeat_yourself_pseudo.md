# repeat_yourself_pseudo.md

## Pseudo-code
Given a string and a positive integer.

Output the string followed by a new line x times, where x is equal to the positive integer.

## Formal pseudo-code
```
START

# Given a string and a positive integer

SET string_to_repeat = the provided string
SET iterations_remaining = the provided integer

WHILE iterations > 0
  PRINT string_to_repeat

  iterations_remaining = iterations_remaining - 1

END
```