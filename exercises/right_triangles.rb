# right_triangles.rb
def triangle(base, right_angle_location = 'bottom right')
  right_triangle = []
  vertical, horizontal = right_angle_location.split(' ')

  stars, spaces = vertical == 'bottom' ? [1, base - 1] : [base, 0]

  case right_angle_location
  when 'bottom right'
    base.times do |number|
      right_triangle << "#{' ' * (spaces - number)}#{'*' * (stars + number)}"
    end
  when 'bottom left'
    base.times do |number|
      right_triangle << "#{'*' * (stars + number)}#{' ' * (spaces - number)}"
    end
  when 'top right'
    base.times do |number|
      right_triangle << "#{' ' * (spaces + number)}#{'*' * (stars - number)}"
    end
  when 'top left'
    base.times do |number|
      right_triangle << "#{'*' * (stars - number)}#{' ' * (spaces + number)}"
    end
  end

  puts right_triangle << ''
end

triangle(5)
triangle(9)
triangle(4, 'bottom right')
triangle(4, 'bottom left')
triangle(4, 'top right')
triangle(4, 'top left')
