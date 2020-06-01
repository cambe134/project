class Meal
  
  attr_accessor :name, :meal_id, :ingredient, :instructtions
  
  @@all = []
  
  def initialize(name, meal_id)
    @name = name 
    @meal_meal = meal_id
    
    @@all <<self
 end
 
 