# This line defines a set of variables into a process
def cheese_and_crackers(cheese_count, boxes_of_crackers)
# These lines are contained from within until the process reads the end command.
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket.\n"
# THis ends the process
end

# This inserts a number into the respective variables as defined above? Is this an array?
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

# This plugs in a reverse variable. basically you are stating that "amount_of_cheese = 10 and equals cheese_count"
puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
# This stores the new numerical value into the defined variables in the cheese_and_crackers function
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# This line displays test to console
puts "We can even do math inside too:"
# This line will assign 30 to cheese_count, and then 11 to boxes_of_crackers
cheese_and_crackers(10 + 20, 5 + 6)

# This line displays test to the console
puts "And we can combine the two, variables and math:"
# This line will add to the established variable, 'muting' it to change. Is that proper language?
# So prior value of amount_of_cheese plus 100 = the new amount stored in the cheese_and_crackers function, in the cheese_count variable
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
