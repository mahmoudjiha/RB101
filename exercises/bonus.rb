# bonus.rb

# def calculate_bonus(salary, bonus_earned)
#   if bool
#     salary / 2
#   else
#     0
#   end
# end

def calculate_bonus(salary, bonus_earned)
  bonus_earned ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
