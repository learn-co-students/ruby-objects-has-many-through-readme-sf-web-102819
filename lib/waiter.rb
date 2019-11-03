# require "pry"
class Waiter
  attr_reader :name
  attr_accessor :years_of_experience, :meal
  @@all = []

  def initialize(name, years_of_experience)
    @name = name
    @years_of_experience = years_of_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end

  def meals
    Meal.all.select do |meal|
      meal.waiter == self
    end
  end
  
  def best_tipper
    #go through the meals that the current waiter instance is in charge of
    #look for the meal that has the largest tip
    #find the Customer instance that is associated with that meal and return that instance
    # ------------------------- DIDN'T WORK -------------------------
    # customer = nil
    # curent_tip = nil
    # meals.each do |meal|
    #   if meal.tip > current_tip
    #     puts "hello"
    #     customer = meal.customer
    #     current_tip = meal.tip
    #   end
    # end
    # customer
    best_tipped_meal = meals.max do |meal_a, meal_b|
      #remember to get the tip from the meals
      meal_a.tip <=> meal_b.tip
    end
    best_tipped_meal.customer
  end
end