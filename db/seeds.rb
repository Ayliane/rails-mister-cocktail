# puts "Opening seed file..."
# responses = RestClient.get "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# response = JSON.parse(responses)

# puts "Creating ingredients seeds"
# response["drinks"].each do |ingredient|
#   ingredient = ingredient["strIngredient1"]
#   Ingredient.create!(name: ingredient)
# end

puts "Creating Cocktails seeds"
Cocktail.create!(name:"Pina Colada", image:"http://www.sofizz.fr/blog/wp-content/uploads/2015/10/pinacolada.jpg")
Cocktail.create!(name:"Bloody Mary", image:"https://www.bulleit.com/images/background/out/2048/bourbon-bloody-mary-hero.jpg")
Cocktail.create!(name:"Cuba Libre", image:"http://www.distilleurs.fr/wp-content/uploads/2015/08/fc-rc-step0-bg.jpg")
Cocktail.create!(name:"Sex on the Beach", image:"http://www.absolutdrinks.com/wp-content/themes/drinks_v2/img/custom_card_images/sex-on-the-beach.jpg")

puts "Seeding complete"
