print "how old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."
# experimental work with variables after chomp grabs them.

results = %{
Have the results been saved?
Now we will see.
#{age}, #{height}, #{weight}...
is as simple as one, two, three.

}

# need to display the results..
puts results
