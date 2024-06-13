# after_midnight.rb

MINUTES_IN_A_DAY = 1440
NEGATIVE_HOUR_START = 23
ZERO = 0
NEGATIVE_MINUTE_START = 60

def time_of_day(minutes_from_midnight)
  time_differential = minutes_from_midnight.abs % MINUTES_IN_A_DAY
  hours, minutes = time_differential.divmod(60)

  result = case minutes_from_midnight <=> 0
           when -1
            [(NEGATIVE_HOUR_START - hours), (NEGATIVE_MINUTE_START - minutes)]
           when 1
            [hours, minutes]
           else
            [0, 0]
           end
  
  result.each_with_index do |element, index|
    if element < 10
      result[index]="0#{element}"
    end
  end

  result.insert(1, ':').join
end

# puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
