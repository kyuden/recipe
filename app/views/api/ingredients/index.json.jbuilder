json.array!(@api_ingredients) do |api_ingredient|
  json.extract! api_ingredient, :id, :amount, :amountUnits, :ingredientName
  json.url api_ingredient_url(api_ingredient, format: :json)
end
