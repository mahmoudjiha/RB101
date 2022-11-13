# repeat_yourself.rb

def repeat_string(string, integer)
  integer.times { puts string }
end

repeat_string('Hello', 3)
repeat_string('', 15)
repeat_string('Goodbye', 0)
