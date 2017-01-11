class CreateCrimeCatagories < ActiveRecord::Migration[5.0]
  def change
    create_table :crime_catagories do |t|
      t.string :category

      t.timestamps
    end
  end
end
