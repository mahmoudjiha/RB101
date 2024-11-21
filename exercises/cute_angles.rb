# cute_angles.rb
DEGREE = "\u00B0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(floating_point_number)
  adjusted_number = floating_point_number % 360

  seconds = (adjusted_number * SECONDS_PER_DEGREE) % MINUTES_PER_DEGREE % SECONDS_PER_MINUTE
  minutes = (adjusted_number * MINUTES_PER_DEGREE) % MINUTES_PER_DEGREE
  degrees = adjusted_number.to_i

  format("#{degrees}#{DEGREE}%.2d'%.2d\"", minutes, seconds)
end

# def dms(floating_point_num)
#   floating_point_num = floating_point_num % 360
#   degrees = floating_point_num.to_i
#   minutes = floating_point_num > 0 ? ((floating_point_num % degrees) * 60).round(2) : 0
#   seconds = minutes > 0 ? ((minutes % minutes.to_i) * 60).round(2) : 0

#   "#{degrees}#{DEGREE}#{format("%.2d", minutes)}#{"'"}#{format("%.2d", seconds)}#{"\""}"
# end

# All test cases should return true
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

puts dms(400) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")
