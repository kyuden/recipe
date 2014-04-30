# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
1000.times do
  Api::Recipe.create(title: "t1", description: "d1", instructions: "ins1")
  Api::Recipe.create(title: "t2", description: "d2", instructions: "ins2")
  Api::Recipe.create(title: "t3", description: "d3", instructions: "ins3")
end
Api::Ingredient.create(recipe_id: 1, amount: 1, amountUnits: "a1", ingredientName: "in1")
Api::Ingredient.create(recipe_id: 2, amount: 2, amountUnits: "a2", ingredientName: "in2")
Api::Ingredient.create(recipe_id: 3, amount: 3, amountUnits: "a3", ingredientName: "in3")
