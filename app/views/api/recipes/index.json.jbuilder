json.array!(@api_recipes) do |api_recipe|
  json.extract! api_recipe, :id, :title, :description, :amount, :amountUnits, :amountUnits, :instructions
  json.url api_recipe_url(api_recipe, format: :json)
end
