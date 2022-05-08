class ChangeRecipeToShop < ActiveRecord::Migration[6.1]
  def change
    rename_table :recipes, :shops
  end
end
