require 'rails_helper'

RSpec.describe API::V1::CrimeCategoriesController, type: :controller do

  describe "GET #show" do
    let!(:crime_category) { create :crime_category }
    
    it "returns http success" do
      get :show, params: {id: crime_category.id }
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
