# eqlog text sample formatting - CSV style using spaces
# [Tue Aug 21 14:36:19 2018] You feel different.
from_file, to_file = ARGV

puts "Welcome to EQ Log Snipper v1"
puts "By Richard Grady\n\n"
#puts "Please enter your filename: (Use logsample.txt for debugging)"
#from_file = $stdin.gets.chomp
puts "You have chosen to open #{from_file} and copy it to #{to_file}"


in_file = open(from_file)
indata = in_file.read

puts "Log filesize is #{indata.length} bytes long."

puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Hit Enter to continue..."
$stdin.gets

out_file = open(to_file, 'w')
out_file.write(indata)

puts "File copy complete."

out_file.close
in_file.close
