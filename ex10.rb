tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."
# I can use """ or %{} to quote text in a string, but it ignores escape sequences. ''' doesnt work on this string
fat_cat = """
I'll do a list:
\t* Cat food #{persian_cat}
\t* Fishies
\t* Catnip\n\t* Grass
"""

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat
