# These lines declare a variable and set a value to the said variable
cars = 100
# This variable below is using a floating point number. You can tell form the decimal place
space_in_a_car = 4.0
drivers = 30
passengers = 90
# These lines use mathematical operators to create new variables from the variables established above
cars_not_driven = cars - drivers
cars_driven = drivers
# By eliminating the variable below, I was able to recreate the error in the book study guide and trace it to line 17 via the error message.
#carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven

# This section displays text to the console and displays variables as numbers from within each string
puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
