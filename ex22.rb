# What I know
# in this file i will make some program using all the elements of ruby i have learned this far

# is for commenting and documentation
puts "Will display text to the console"
puts "I can display numbers inside a string like this: #{30}"
puts "I can do math inside strings with numbers #{20 + 5}"
puts "I know that math uses PEMDAS when making calculations"
puts "PEMDAS means Parenthesis, Exponents, Multiplication, Division, Addition, and Subtraction."
# i can set variables like this. Variables cant start with a number, but letters and numbers okay N1 for example
cat = "King Tommen" # This variable stores a strings
cats = 12 # This variable sets the number of cats as 12
are_there_cats = false # this is a Boolean
cats_fp = 12.0 # add .0 to set the number as floating point

print "I can also print stuff. PRINT doesnt have the new line at the end. New line is an escape sequence called \n"
print "When you add .chomp to a gets for example, the command will take off the \n escape sequence."
print "but you can also add a pause into your program by doing this."
gets.chomp
puts "but wait! If my program uses command line arguments, aka ARGV, you need to do it like this..."
$stdin.gets.chomp
print 'If i want to display code, i can do this #{cat}'
puts "Or if i wanna do it on multiple lines, then there is this..."
puts %{ blah blah
  yada yada
  alright
  look at these #{cats}
  oh yeah!
  cats = 11? huh?

}
