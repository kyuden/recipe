class CreateApiIngredients < ActiveRecord::Migration
  def change
    create_table :api_ingredients do |t|
      t.integer :recipe_id
      t.integer :amount
      t.string :amountUnits
      t.string :ingredientName

      t.timestamps
    end
  end
end
