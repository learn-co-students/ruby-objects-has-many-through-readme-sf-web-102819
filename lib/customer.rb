class Customer
  attr_accessor :meal

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(waiter, total, tip)
    Meal.new(waiter, self, total, tip)
  end

  def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
  end

  #why do we use map here? Why not select? We are only trying to get the waiters from the obj's meal
  #we use map here because we want to iterate over the arr and return a new arr of waiter objs
  #select would get the the meal obj if the meal.waiter == true. Which is all the meals
  def waiters
    meals.map { |meal| meal.waiter }
  end
end