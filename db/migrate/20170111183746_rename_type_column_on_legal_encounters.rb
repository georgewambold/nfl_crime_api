class RenameTypeColumnOnLegalEncounters < ActiveRecord::Migration[5.0]
  def change
    change_table :legal_encounters do |t|
      t.rename :type, :encounter_type
    end
  end
end
