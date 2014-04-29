class Api::IngredientSerializer < ActiveModel::Serializer
  attributes :id, :amount, :amountUnits, :ingredientName
end
