require 'rails_helper'

RSpec.describe Player, type: :model do

  let(:player) { create :player }
  
  describe "#titleized_full_name" do 

    it "properly titleizes and spaces the player's full name" do 
      expect(player.titleized_full_name).to eq('Paul Bishop')
    end
  end

  describe "#last_arrest_associated_team" do 
    let(:team1)    { create :team }
    let(:team2)    { create(:team, team_name: 'NYC', team_name: 'Giants', team_city: 'New York') }
    let!(:crime1)  { create( :crime, player: player, team: team1, description: 'foo', outcome: 'bar', date_of_incident: Date.today) }
    let!(:crime2)  { create( :crime, player: player, team: team2, description: 'some description', outcome: 'went home', date_of_incident: (Date.today - 2) ) }

    it 'grabs the team associated with the most recent crime' do 
      expect(player.last_arrest_associated_team).to eq(team1)
    end
  end

  describe "last_arrest_associated_position" do 
    let(:team1)     { create :team }
    let(:team2)     { create(:team, team_name: 'NYC', team_name: 'Giants', team_city: 'New York') }
    let(:position1) { create :position }
    let(:position2) { create(:position, name: 'RB') }
    let!(:crime1)   { create( :crime, player: player, position: position1, team: team1, description: 'foo', outcome: 'bar', date_of_incident: Date.today) }
    let!(:crime2)   { create( :crime, player: player, position: position2, team: team2, description: 'some description', outcome: 'went home', date_of_incident: (Date.today - 2) ) }
    
    it 'grabs the position associated with the most recent crime' do 
      expect(player.last_arrest_associated_position).to eq(position1)
    end
  end
end
