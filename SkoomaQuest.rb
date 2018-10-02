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
# How do i make more cats?
cats = cats + 1
# That is long, any less?
cats -= 1 # also can use += as well.
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
puts "." * 10 # Multiple lines from one line...
print "I"; print "can also"; print "use multiple lines to print"
# can also make big quotes...
puts %q{
There's something going on here.

With this weird quote
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.

You can put escape sequences in "", but not in a ''
 }
 # I have learned about escape sequences...
# This generates a QUOTE...  IT CAN BE MULTILINE!
 puts %q{
 These are the escape sequences in Ruby...
\\ = backslash
\' = single quote
\" double quote
\  = ASCII bell (BEL)
\b = backspace (BS)
\f = ASCII formfeed
\r = ASCII carriage return
\t = ASCII Horizontal tab
\uxxxx = Character with 16 bit hex value (Unicode only)
\v = ASCII Vertical tab
\ooo = Character with octal value ooo
\xhh = Character with hex value hh
}
puts """
I can quote in here and still use escape sequences... \n
Oh... and i cause use a variable...
How many cats again? #{cats}
"""
# when using $stdin.gets.chomp, i can also add .to_f to convert (to floating point) or .to_i (for integer)
# I can grab variables from the command line (i.e) ruby file.rb var1 var2 by doing this...
# var1, var2, var3 = ARGV
# But you have to use $stdin when using ARGV!

# so how do I open files? (remember, you must close a file after opening it for memory sake..)
# txt = open(filename, 'w')   # <----- able to write to the file vs read only.
# print txt.read
# txt.close

# also, don't forget closing a file after usage in a temporary block...

# from_file, to_file = ARGV
# This line uses inline syntax for blocks, everything inside the { } will be destroyed then the open function returns
# Using this I dont need to close 2 files - the |f| is saying to yield the variable f inside of the blocks
# The block syntax will auto close
# newdata = File.open(from_file) { |f| f.read() }
#output = File.open(to_file, 'w')
#output.write(newdata)
#output.close
# -------------------------------------------------------------------
# So how do i define a function?
def lunch(drink, food)
  puts "This explains my function, until i end it..."
  puts "What is for lunch? We have #{drink} and some #{food}"
end

# How can I use the function
# put the variables directly in...?
drink = "Iced Tea"
food = "Chicken Burger"

# Or i can pass variables in place of the strings... or numbers?
# lunch(20, 10)
