# This line will get a filename from the command line argument and place it as a string into the variable called filename.
filename = ARGV.first
# This line establishes a variable named txt that triggers the opening of the filename into ruby
txt = open(filename)
# This line will display text and show the filename from the variable gathered at the command line
puts "Here's your file #{filename}:"
# This line will print the text contained in the file and read it into the console
print txt.read
txt.close # Closes the files and clears out of memory.
# Study drills - Which method of getting a file works better? Above or Below?

# This line will display text into the console asking you for the filename again
print "Type the filename again: "
# This line will set the file's name as a new variable
file_again = $stdin.gets.chomp
# This line will open the file named in the previous line into ruby
txt_again = open(file_again)
# This line will display the text contained in the file to the console window.
print txt_again.read
txt_again.close # Closes the file and clears out of memory.
