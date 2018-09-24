print "Give me a number: "
number = gets.chomp.to_f # .to_i will convert integer, and .to_f will convert to floating point.

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_f

smaller = number / 100
puts "A smaller number is #{smaller}."

# Study drills
print "I am the changemaker. Give me some money... "
money_input = gets.chomp.to_f
change_output = money_input / 10
puts "Here is your change: #{change_output}."
