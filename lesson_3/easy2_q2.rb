# easy2_q2.rb

ORIGINAL_DESCRIPTION = 'The Munsters are creepy in a good way.'

# => 'tHE mUNSTERS ARE CREEPY IN A GOOD WAY.'
munsters_description = ORIGINAL_DESCRIPTION
p munsters_description.swapcase!

# => 'The munsters are creepy in a good way.'
munsters_description = ORIGINAL_DESCRIPTION
p munsters_description.capitalize!

# => 'the munsters are creepy in a good way.'
munsters_description = ORIGINAL_DESCRIPTION
p munsters_description.downcase!


# => 'THE MUNSTERS ARE CREEPY IN A GOOD WAY'
munsters_description = ORIGINAL_DESCRIPTION
p munsters_description.upcase!
