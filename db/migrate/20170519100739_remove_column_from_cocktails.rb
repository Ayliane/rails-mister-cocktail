class RemoveColumnFromCocktails < ActiveRecord::Migration[5.0]
  def change
    remove_column :cocktails, :image
  end
end
