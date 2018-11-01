# Experimental work with strings..
# I want to parse CSV style strings with $ instead of ,
# This program will push variables into the array.

# available tools. close, read, readline, truncate, write('stuff'), seek(0)

log_sample = "[Mon Oct 29 17:41:52 2018] Catbox joined the raid."
ten_things = "OldData1$OldData2$OldData3"
# ten_things = "Field1 Field2 Field3 Field4 Field5 Field6"
more_stuff_2 = "18:00:01$Catbox has joined the Raid."
more_stuff = ["Alpha", "Beta", "Gamma", "Delta", "Epsilon", "Zeta", "Eta", "Theta", "Iota", "Kappa", "Lambda", "Mu", "Nu"]


stuff  = ten_things.split('$')

while stuff.length != 11
  next_one = more_stuff.pop
  puts "Adding: #{next_one}"
  stuff.push(next_one)
  puts "Variable Length: #{stuff}"
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."
$stdin.gets
puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join('#')
