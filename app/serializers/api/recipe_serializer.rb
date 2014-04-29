class Api::RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :instructions
  has_many :ingredients
end
