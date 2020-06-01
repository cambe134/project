class Api
  def self.get_meals(ingredient)
    
    url = "https://www.themealdb.com/api/json/v1/1/filter.php?i=#{ingredient}"
    response = Net::HTTP.get(URI(url))
    meals = JSON.parse(response)["meals"][0]
    meals.each |meal_details|
     Meal.new(meal_deatils)
   end
    binding.pry
    
 end
 
end