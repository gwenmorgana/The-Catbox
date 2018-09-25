# This line sets a variable called filename from the first commandline argument
filename = ARGV.first
# These lines display text to screen  saying that it will erase the file represented by the variable stated above
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

# This line will wait for the newline escape sequence, but tells the user that they can Ctrl+C  to exit the program before the truncation takes place.
$stdin.gets
# This line will let the user know that the file is being opened if the program wasnt exited via the above conditions
puts "Opening the file..."
# This line will open the file name contained in the commandline variable with permission to write to the file.
target = open(filename, 'w')
# This line will Display text to notify the user that the file will be truncated (aka deleted from within)
puts "Truncating the file. Goodbye!"
# This line will use the truncate function starting at position 0 (the beginning of the file)
target.truncate(0)
# This line will display message to the screen
puts "Now I'm going to ask you for three lines."
# The following six lines will ask for input form the user and assign each query into a variable. the .chomp function will remove the \n newline escape sequence.
print "Line 1: "
line1 = $stdin.gets.chomp
print "Line 2: "
line2 = $stdin.gets.chomp
print "Line 3: "
line3 = $stdin.gets.chomp
# This line lets the user know that the program is going to write data to the text file.
puts "I'm going to write these to the file."
# These lines will start at position 0, and write the datat contained in the strings above line1,2,and3, and place it into the file. It will place a new line after each string is written.
# The 6 lines below will be condensed into a single line to perform the write function...
#target.write(line1)
#target.write("\n")
#target.write(line2)
#target.write("\n")
#target.write(line3)
#target.write("\n")

target.write("#{line1}\n#{line2}\n#{line3}\n")

# The following line will present text to the user.
puts "And finally, we close it."
# This line will pass the .close command to take the opened text file (grabbed from the commandline) and remove it from memory.
target.close

# Experimental code added: Attempting to make the program display the file we just created to the console.

# These lines will ask for the user's name and collect it into a variable called user_name and chomp off the escape sequence \n
print "What is your name, User?: "
user_name = $stdin.gets.chomp
# These lines will
print "Tell me the name of the file you want to display: "
user_file = $stdin.gets.chomp
puts "Ahh, I knew it was you, #{user_name}... Now let's get down to business here.\n\n"

filename = open(user_file)
print filename.read

filename.close
