# Here's some new strange stuff, remember type it exactly.
# Below is a string listing days.
days = "Mon Tue Wed Thu Fri Sat Sun"
# Below is a string listing months, however the \n function places each month on a new line.
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"
#These strings are displayed to the console, each shows text and then the data (string) from the variable
puts "Here are the days: #{days}"
puts "Here are the months: #{months}"
# These lines, are essentially one line, but they are a string that allows for a quote. Each line is spaced. Similar to \n but defined by the %q{} I added extra spaces as a test from within the quote, it was successful.
puts %q{
There's something going on here.





With this weird quote
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
 }
