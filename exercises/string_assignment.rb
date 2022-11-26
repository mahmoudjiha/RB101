# string_assignment.rb

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
#=> Alice
#=> Bob

name = 'Bob'         # name var assigned to memory space containing str 'Bob'
save_name = name     # save_name var assigned to same memory space as name var
name.upcase!         # memory space containing str 'Bob' mutated to 'BOB'
puts name, save_name
#=> BOB
#=> BOB
