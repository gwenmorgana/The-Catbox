# This line establishes a variable array named formatter - Line 3 is an attempt to reverse the array's order manually - it didn't work.
formatter = "%{first} %{second} %{third} %{fourth}"
# formatter = "%{fourth} %{third} %{second} %{first]}"

# This line below displays to console four numbers on a single line from within the array
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
# This line below displays four text strings on a single line in the console
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
# This line displays four Booleans on a single line in the console
puts formatter % {first: true, second: false, third: true, fourth: false}
# This like displays to console the formatter variable array four times on a single line
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

# This line has the same function as line 5, but the string is broken into multiple lines. It closes the string on line 19
puts formatter % {
  first: "I had this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}
