# More defining of functions - adding the new return command
def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  return a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  return a * b
end

def divide(a, b)
  "DIVIDING #{a} / #{b}"
  return a / b
end


puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"


# A puzzle for the extra credit, type it in anyway.
puts "Here is a puzzle"

# what = add(age, subtract(height, multiply(weight, divide(iq, 2))))
# I'll will address this later on
puts "That becomes #{what}. Can you do it by hand?" # Why yes I can.

t1 = divide(iq, 2)
t2 = multiply(weight, iq)
t3 = subtract(height, weight)
t4 = add(age, height)
result = add(t1, t2, t3, t4)

puts "The result is #{result}"
