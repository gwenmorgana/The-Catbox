name = 'Zed A. Shaw'
age = 35.0 # not a lie in 2009
height = 74.0 # inches
weight = 180.0 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'
# Experimental variables to output conversions - limiting floating point digits to 1 decimal. ---See Note A
height_converter = 2.5
# weight_converter = 2.2046226218 ----Note A
weight_converter = 2.2
# Experimental variables processed by operators
new_height = height * height_converter
new_weight = weight / weight_converter

puts "Let's talk about #{name}."
# puts "He's #{height} inches tall."
# Experimental height conversion to centimeters - lc
puts "He's #{height * height_converter} centimeters tall."

# puts "He's #{weight} pounds heavy."
# Experimental weight conversion to kilograms
puts "He's #{weight / weight_converter} kilograms heavy."

puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

# this line is tricky, try to get it exactly right
# puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."
#New Experimental line to display the converted height and weight along with the age.
puts "If I add #{age}, #{new_height}, and #{new_weight} I get #{age + new_height + new_weight}."
