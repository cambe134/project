class Cli
  def run
   puts " "
   puts "Hello and welcome to my Meal app!"
   puts " "
   puts" Enter a catagory for a meal type!"
   puts " "
   @ingredient = gets.strip.downcase
   Api.get_meals(@ingredient)
   
   print_meals(@ingredient)
   
  
 end

end