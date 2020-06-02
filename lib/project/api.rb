class Api
  def self.get_meals(ingredient)
    
    url = "https://www.themealdb.com/api/json/v1/1/filter.php?i=#{ingredient}"
    
    response = Net::HTTP.get(URI(url))
    
    meals = JSON.parse(response)["meals"]
    
    meals.each do |meal_details|
      
     Meal.new(name: meal_details["strMeal"], meal_id: meal_details["idMeal"])
   end
    binding.pry
 end
 
end