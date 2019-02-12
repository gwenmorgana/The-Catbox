alias chant print #alias creates a different way to call the print function
108.times {chant 'maRa'} #spits out 108 of the chanted string...

def iterator
  yield 'yield, '
  yield 'blocks,'
  yield 'ruby'
end
iterator {|yielded| chant "use#{yielded}"}
