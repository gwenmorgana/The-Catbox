# How can I simplify this code? I am using command line arguments test.txt and vessel.txt
from_file, to_file = ARGV
# This line uses inline syntax for blocks, everything inside the { } will be destroyed then the open function returns
# Using this I dont need to close 2 files - the |f| is saying to yield the variable f inside of the blocks
# The block syntax will auto close
newdata = File.open(from_file) { |f| f.read() }

output = File.open(to_file, 'w')
output.write(newdata)
output.close
