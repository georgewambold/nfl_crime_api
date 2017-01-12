class CreateJoinTableCrimesCrimeCategories < ActiveRecord::Migration[5.0]
  def change
    create_join_table :crimes, :crime_categories do |t|
      t.index :crime_id
      t.index :crime_category_id
    end
  end
end
