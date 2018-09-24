# This line defines a variable
types_of_people = 10
#This line places a variable containing a string and a variable inside of x - Also when changing " to ', you make the string show the variables as well
x = 'There are #{types_of_people} types of people.'
# This line defines binary as a variable to display text in a string and type out binary
binary = "binary"
# This line defines do_not as a variable containing a text string containing the word "don't"
do_not = "don't"
# This next like defines y to display a string of text with two variables adding to the text to look like one line with typed out words
y = "Those who know #{binary} and those who #{do_not}."

# The following two lines will display onto the console the variable x and on a new line, the variable y. These variables are defined above.
puts x
puts y

# This line will display to console a string of text and the entire contents of the x variable
puts "I said: #{x}."
# This line will display to console a string of text and the entier contents of the y variable
puts "I also said: '#{y}'."

# This line will declare a variable named hilarious with the condition of being false
hilarious = false
# This line is a variable storing a string of text and the result of the variable hilarious in order to facilitate displaying the info to the console and reduce typing
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

# This line will display the joke_evaluation variable as text to the console
puts joke_evaluation

# The following two lines are made to put strings of text into a variable, so that line 34 can display a lot of text with minimal typing.
w = "This is the left side of..."
e = "a string with a right side."

#This line will display variable w and then variable e as text to the console.
puts w + e
