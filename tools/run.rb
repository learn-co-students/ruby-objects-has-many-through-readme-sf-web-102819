require "pry"
require_relative "../lib/customer"
require_relative "../lib/waiter"
require_relative "../lib/meal"

mike = Customer.new("Mike", 30)
rachel = Customer.new("Rachel", 27)
sam = Customer.new("Sam", 27)
pat = Waiter.new("Pat", 2)
alex = Waiter.new("Alex", 5)
dan = Waiter.new("Dan", 3)

 
sam.new_meal(pat, 50, 10) # A Customer creates a Meal, passing in a Waiter instance
sam.new_meal(alex, 20, 3) # A Customer creates a Meal, passing in a Waiter instance
sam.new_meal(alex, 15, 4) # A Customer creates a Meal, passing in a Waiter instance
mike.new_meal(dan, 12, 4) # A Customer creates a Meal, passing in a Waiter instance

pat.new_meal(mike, 30, 5) # A Waiter creates a Meal, passing in a Customer instance
pat.new_meal(rachel, 30, 7) # A Waiter creates a Meal, passing in a Customer instance
alex.new_meal(mike, 10, 4) # A Waiter creates a Meal, passing in a Customer instance







binding.pry

puts "object has many through - many to many"
