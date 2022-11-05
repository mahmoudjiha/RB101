# easy_2_question_1.rb

ages = { 'Herman' => 32, 'Lily' => 30, 'Grandpa' => 402, 'Eddie' => 10 }

p ages.key?('spot')
p ages.any? { |key, value| key == 'spot' }
p ages.fetch('spot', false)