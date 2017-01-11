class CreateCrimes < ActiveRecord::Migration[5.0]
  def change
    create_table :crimes do |t|
      t.references :player, index: true
      t.references :team, index: true
      t.references :position, index: true
      t.references :legal_encounter, index: true
      t.string :description
      t.string :outcome
      t.datetime :date_of_incident

      t.timestamps
    end
  end
end
