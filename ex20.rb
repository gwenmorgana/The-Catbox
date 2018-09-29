# This line establishes a variable from the command line
input_file = ARGV.first
# this line defines a function called print all that "reads" the file to console
def print_all(f)
  puts f.read
end
# this line defines a function called rewind, that sets the files cursor position to byte 0
def rewind(f)
  f.seek(0)
end
# this line defines a function prints a line to the file and chomps away the escape sequence at the end of the line
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end
# this line establishes a variable that acts as a function, opening the file pointed to by the variable
current_file = open(input_file)
# this line displays text to the console
puts "First let's print the whole file:\n"
# this line prints the entirety of the file to the console, much like the cat command in windows powershell
print_all(current_file)
# this line displays test to the console
puts "Now let's rewind, kind of like a tape."
# this line calls the rewinf function on the file held in the current_file variable and sets the cursor to the 0 byte
rewind(current_file)
# this line displays text to the console.
puts "Let's print three lines:"
# these two lines will set the current_line to a value of 1, and print the number 1 to the first line in the file held by the variable called current_file
current_line = 1
print_a_line(current_line, current_file)
# the following 4 lines of code will increase the current_line variable by 1, numerically, then write that number to the second line (aka... current_line =+ 1) but in a longer fashion
current_line = current_line + 1 # You can also increase the value of this variable by using current_line += 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)
