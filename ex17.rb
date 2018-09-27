# This line grabs two variables from the command line when the program executes
from_file, to_file = ARGV
# This line states text to the console and displays the two variables contained within the string by filename, not by contents
puts "Copying from #{from_file} to #{to_file}"
# -----?
# we could do these two on one line, how?
in_file = open(from_file)
indata = in_file.read
# This line will display a text string and displays the length of the from file in bytes
puts "The input file is #{indata.length} bytes long"
# This line will display a string and check if the file exists within the file directory, and displays a boolean value
puts "Does the output file exist? #{File.exist?(to_file)}"
# This line displays a text string, instructing the user to close the program if they do not want to copy the file from ARGV variable one, to two
puts "Ready, hit RETURN to continue, CTRL-C to abort."
# This line collects a newline \n escape sequence from the prompt, effeictively acting as a pause within the program
$stdin.gets
# This line establishes a variable to perform a function, to open the destination file in write access mode
out_file = open(to_file, 'w')
out_file.write(indata)
# This line displays text to the console
puts "Alright, all done."
# These two lines close the opened files out of memory
out_file.close
in_file.close
