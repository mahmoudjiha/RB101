# after_midnight.rb

def time_of_day(minutes_from_midnight)
  # divided by 60
  # add / subtract hour
  # add / subtract minute
  # convert to string & format

  return '00:00' if minutes_from_midnight == 0

  hours = (minutes_from_midnight / 60).abs.remainder(24)

  minute_from_hour = minutes_from_midnight.remainder(60)

  starting_minute, starting_hour = minute_from_hour > 0 ? [0, 0] : [-60, -24]

  components = [(starting_hour + hours), (starting_minute - minute_from_hour)]
  components.map! { |element| element.abs.to_s }
  p components
  
  components.each_with_index do |element, index|
    components[index].prepend('0') if element.size == 1
  end

  p components.insert(1, ':').join
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
