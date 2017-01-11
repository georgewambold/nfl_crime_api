class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :team_code
      t.string :team_name
      t.string :team_city

      t.timestamps
    end
  end
end
