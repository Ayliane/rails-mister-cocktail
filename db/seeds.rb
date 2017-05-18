Ingredient.destroy_all

puts "Opening seed file..."
responses = RestClient.get "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
response = JSON.parse(responses)

puts "Creating ingredients seeds"
response["drinks"].each do |ingredient|
  ingredient = ingredient["strIngredient1"]
  Ingredient.create!(name: ingredient)
end

puts "Creating Cocktails seeds"
Cocktail.new(name:"Pina Colada")
Cocktail.new(name:"Bloody Mary")
Cocktail.new(name:"Cuba Libre")
Cocktail.new(name:"Sex on the Beach")

puts "Seeding complete"
