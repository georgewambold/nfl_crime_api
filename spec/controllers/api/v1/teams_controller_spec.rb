require 'rails_helper'

RSpec.describe API::V1::TeamsController, type: :controller do
  let(:team) { create :team }
  let!(:crime) { create :crime, team: team }

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { id: team.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end