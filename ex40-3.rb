# this program will load my module..

require "./ex40-2.rb"
MyStuff.apple()
# this links to the tangerine
puts MyStuff::TANGERINE


# SO... refer back to the hash and you should start to see how this is similar to using a hash, but the syntax is different. LEt's compare...

mystuff['apple'] # get apple form dictionary
MyStuff.apple() # get apple from the module
MyStuff::TANGERINE # Same thing, it's just a variable (That was loaded from the module...)
