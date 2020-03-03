require "./Sellable.rb"
require "./Item.rb"
require "./Food.rb"

diamond = Item.new({price: 1000000, color: "Clear blue", weight: 2})
puts "Price: #{diamond.price} dollars"
puts "Color: #{diamond.color}"
puts "Weight: #{diamond.weight} pounds"

bread = Food.new({price: 5, color: "brown", weight: 0.5, shelf_life: 3})

puts "Price: #{bread.price} dollars"
puts "Color: #{bread.color}"
puts "Weight: #{bread.weight} pounds"
puts "Shelf life: #{bread.shelf_life} days"
