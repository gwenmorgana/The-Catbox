# You can use ; to put multiple lines on one line..
from_file, to_file = ARGV;newdata = File.open(from_file) { |f| f.read() };output = File.open(to_file, 'w');output.write(newdata);output.close
