class CreateLegalEncounters < ActiveRecord::Migration[5.0]
  def change
    create_table :legal_encounters do |t|
      t.string :type
      
      t.timestamps
    end
  end
end
