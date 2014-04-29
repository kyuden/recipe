class CreateApiRecipes < ActiveRecord::Migration
  def change
    create_table :api_recipes do |t|
      t.string :title
      t.string :description
      t.string :instructions

      t.timestamps
    end
  end
end
