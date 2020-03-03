recipes = ["crepes"]
languages = ["French"]


if recipes.length > 10 && languages.length > 5
  puts "They should date."
elsif recipes.include?("crepes") && languages.include?("French")
  puts "Here comes the bride"
else
  puts "It wasn't meant to be. :("
end


