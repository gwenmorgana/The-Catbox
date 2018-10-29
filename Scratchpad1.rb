# Experimental work with strings..
# I want to parse CSV style strings with $ instead of ,

ten_things = "Field1 Field2 Field3 Field4 Field5 Field6"
more_stuff_2 = "18:00:01$Catbox has joined the Raid."
more_stuff = ["Alpha", "Beta", "Gamma", "Delta", "Epsilon", "Zeta", "Eta", "Theta", "Iota", "Kappa"]


stuff  = ten_things.split(' ')

while stuff.length != 10
  next_one = more_stuff.pop
  puts "Adding: #{next_one}"
  stuff.push(next_one)
  puts "Variable Length: #{stuff}"
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join('#')
