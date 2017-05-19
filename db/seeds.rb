Doses.destroy_all
Cocktails.destroy_all

# puts "Opening seed file..."
# responses = RestClient.get "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# response = JSON.parse(responses)

# puts "Creating ingredients seeds"
# response["drinks"].each do |ingredient|
#   ingredient = ingredient["strIngredient1"]
#   Ingredient.create!(name: ingredient)
# end

puts "Creating Cocktails seeds"
pina_url = "http://www.sofizz.fr/blog/wp-content/uploads/2015/10/pinacolada.jpg"
bloody_url = "https://www.bulleit.com/images/background/out/2048/bourbon-bloody-mary-hero.jpg"
cuba_url = "http://www.distilleurs.fr/wp-content/uploads/2015/08/fc-rc-step0-bg.jpg"
sex_url = "http://www.absolutdrinks.com/wp-content/themes/drinks_v2/img/custom_card_images/sex-on-the-beach.jpg"

cocktail_1 = Cocktail.new(name: "Pina Colada")
cocktail_1.save!
cocktail_1.image_url = pina_url

cocktail_2 = Cocktail.new(name: "Bloody Mary")
cocktail_2.save!
cocktail_2.image_url = bloody_url

cocktail_3 = Cocktail.new(name: "Cuba Libre")
cocktail_3.save!
cocktail_3.image_url = cuba_url

cocktail_4 = Cocktail.new(name: "Sex on the Beach")
cocktail_4.save!
cocktail_4.image_url = sex_url


puts "Seeding complete"
