# right_triangles.rb

def triangle(base)
  stars = 1
  spaces = base - 1

  base.times do |number|
    puts "#{' ' * (spaces - number)}#{'*' * (stars + number)}"
  end
end

triangle(5)
triangle(9)
