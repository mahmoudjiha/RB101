# after_midnight.rb

# MINUTES_PER_DAY = 1440
# NEGATIVE_HOUR_START = 23
# ZERO = 0
# NEGATIVE_MINUTE_START = 60

# def time_of_day(minutes_from_midnight)
#   time_differential = minutes_from_midnight.abs % MINUTES_PER_DAY
#   hours, minutes = time_differential.divmod(60)

#   result = case minutes_from_midnight <=> 0
#            when -1
#             [(NEGATIVE_HOUR_START - hours), (NEGATIVE_MINUTE_START - minutes)]
#            when 1
#             [hours, minutes]
#            else
#             [0, 0]
#            end

#   result.each_with_index do |element, index|
#     if element < 10
#       result[index]="0#{element}"
#     end
#   end

#   result.insert(1, ':').join
# end

# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def normalize_minutes(minutes)
#   minutes % MINUTES_PER_DAY
# end

# def time_of_day(delta_minutes)
#   delta_minutes = normalize_minutes(delta_minutes)
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

SUNDAY_MORNING = Time.new(2024, 1, 7, 0, 0)
WEEKDAYS = {
  0 => 'Sunday', 1 => 'Monday', 2 => 'Tuesday', 3 => 'Wednesday',
  4 => 'Thursday', 5 => 'Friday', 6 => 'Saturday'
}

def date_time_from_start(delta_minutes, start)
  start + (delta_minutes * 60)
end

def time_and_day(delta_minutes)
  date_time = date_time_from_start(delta_minutes, SUNDAY_MORNING)
  weekday = WEEKDAYS[date_time.wday]
  hour = date_time.hour
  minute = date_time.min

  "#{weekday} #{format('%02d:%02d', hour, minute)}"
end

puts time_and_day(0) == "Sunday 00:00"
puts time_and_day(-3) == "Saturday 23:57"
puts time_and_day(35) == "Sunday 00:35"
puts time_and_day(-1437) == "Saturday 00:03"
puts time_and_day(3000) == "Tuesday 02:00"
puts time_and_day(800) == "Sunday 13:20"
puts time_and_day(-4231) == "Thursday 01:29"
