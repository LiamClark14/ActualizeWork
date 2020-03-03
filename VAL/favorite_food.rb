favorite_foods = []

5.times do
  puts "Whats your favorite food?"
  food = gets.chomp
  favorite_foods << food
end

i = 0
while i < favorite_foods.length
  puts " #{i + 1}. #{favorite_foods[i]}"
  i += 1
end
