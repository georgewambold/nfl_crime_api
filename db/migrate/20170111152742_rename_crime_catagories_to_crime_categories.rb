class RenameCrimeCatagoriesToCrimeCategories < ActiveRecord::Migration[5.0]
  def change
    rename_table :crime_catagories, :crime_categories
  end
end
