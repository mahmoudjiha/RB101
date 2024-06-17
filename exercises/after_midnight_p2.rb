# after_midnight_p2.rb

# Given a string representing a valid time in 24 hour (00:00) format or "24:00"
#   - Isolate the hours & minutes
#   - convert hours and mintues to integers
#   - initialize variable delta_minutes to integer 0
#   - add hours * 60 to delta_minutes
#   - add minutes to delta_minutes
#
#   - if after_midnight, return the result of 0 + delta_minutes
#   - else if before_midnight, return the result of 1440 - delta_minutes

MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def minute_differential(time)
  hours, minutes = time.split(':').map(&:to_i)

  MINUTES_PER_DAY - ((hours * MINUTES_PER_HOUR) + minutes)
end

def after_midnight(time)
  (minute_differential(time) % -MINUTES_PER_DAY).abs
end

def before_midnight(time)
  (minute_differential(time)) % MINUTES_PER_DAY
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
