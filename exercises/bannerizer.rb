# bannerizer.rb

def print_in_box(text)
  size = text.size

  if size >= 80
    border = "+#{'-' * 78}+"
    empty_space = "|#{' ' * 78}|"
    lines = size / 76

    lines += 1 if size % 76 > 0

  else
    border = "+#{'-' * (size + 2)}+"
    empty_space = "|#{' ' * (size + 2)}|"
    lines = 1
  end

  text_lines = []
  iterator = 0
  first_index = 0
  last_index = 76

  until iterator == lines
    text_lines << text[first_index...last_index]

    iterator += 1
    first_index += 76
    last_index += 76
  end

  text_lines.each do |element|
    if element.size < 76 && element.size != size
      loop do
        element.insert(0, ' ')
        break if element.size == size || element.size == 76
        element.insert(-1, ' ')
        break if element.size == size || element.size == 76
      end
    end
  end

  puts border
  puts empty_space

  lines.times do |number|
    puts "| #{text_lines[number]} |"
  end

  puts empty_space
  puts border

  # banner = <<~STR
  # #{border}
  # #{empty_space}
  # | #{text[0...76]} |
  # #{empty_space}
  # #{border}
  # STR

  # puts banner
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box("How much wood could a woodchuck chuck if a woodchuck " \
             "could chuck wood? As much wood as a woodchuck could " \
             "chuck, if a woodchuck could chuck wood!")
print_in_box("Hello, my name is George! What is your name? " \
             "It is a pleasure to meet you!!")

# extract to methods
# reduce complexity
# adapt to not split words apart
