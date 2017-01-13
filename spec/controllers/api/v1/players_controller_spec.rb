require 'rails_helper'

RSpec.describe API::V1::PlayersController, type: :controller do
  let(:player) { create :player }
  let!(:crime) { create :crime, player: player }

  describe "GET #show" do
    it "returns http success" do
      get :show, params: {id: player.id }
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