require 'rails_helper'

RSpec.describe Player, type: :model do

  let(:player) { Player.create(first_name: 'john', last_name: 'smith') }
  
  describe "#titleized_full_name" do 

    it "properly titleizes and spaces the player's full name" do 
      expect(player.titleized_full_name).to eq('John Smith')
    end
  end

  describe "#last_arrest_associated_team" do 
    let(:team1)    { Team.create(team_code: 'DEN', team_name: 'Broncos', team_city: 'Denver') }
    let(:team2)    { Team.create(team_code: 'NYC', team_name: 'Giants', team_city: 'New York') }
    let!(:crime1)  { Crime.create(id: 1, player: player, team: team1, legal_encounter_id: 1, description: 'foo', outcome: 'bar', date_of_incident: Date.today) }
    let!(:crime2)  { Crime.create(id: 1, player: player, team: team2, legal_encounter_id: 1, description: 'foo', outcome: 'bar', date_of_incident: (Date.today - 2) ) }

    it 'grabs the team associated with the most recent crime' do 
      expect(player.last_arrest_associated_team).to eq(team1)
    end
  end
end
