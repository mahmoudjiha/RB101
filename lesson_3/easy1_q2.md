# easy1_q2.md

In Ruby, `!` and `?` are operators with different functions.

- When `!` is prefixed to an object, expression, etc. it's the
equivalent of something not being truthy or `false`.
  - i.e. `name == false; name == !(1 + 2 + 3)` => `true`
- `!` is also used as a suffix in method names, by convention, to indicate destructive methods that will mutate the caller or arguments. However, this is not always true.
  - The `Array#map!` method is mutating, as expected by convention.
  - However, `Array#shift` is also mutating, but is not suffixed with `!`.

- When the ternary operator `?` is used before an expression, it will function
as an equivalent of an if/else statement.
  - e.g. `3 ? 'Integer literals are truthy in Ruby' : 'Not truthy'` will always
  return `'Integer literals are truthy in Ruby'`.
  - equivalent to:
  ```
  if 3
    'Integer literals are truthy in Ruby'
  else
    'Not truthy'
  end
  ```
- `?` is also used as a suffix in method names, by convention, to indicate
methods that evaluate whether the method caller meets a condition(s) defined
in the method and will probably return `true` or `false`.

## follow-up questions

1. `!=` is equivalent to saying 'not equal to' and should be used when an
object needs to match a specific value.
2. When `!` is put before something, the expression will evaluate to `false`.
  - Solution correction: evaluates to the opposite of its boolean equivalent.
  - Error: `!user_name` in the question was just an example
3. When `!` is put after something, this can be a sign that a method will
mutate the caller or arguments.
4. When `?` is put before something, it acts as if/else statement for the
preceding condition. Whatever is after the `?` will be used as outputs for the
conditional statement and should be separated by a `:`.
5. When `?` is put after something, this can be a sign that the method will
evaluate the caller based on some conditional defined in the method and will
likely return a boolean.
6. When `!!` is put before something, it will always evaluate to its boolean.