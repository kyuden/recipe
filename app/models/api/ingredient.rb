class Api::Ingredient < ActiveRecord::Base
  belongs_to :recipe
end
