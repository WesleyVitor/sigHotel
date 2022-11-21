require 'rails_helper'

RSpec.describe "Quartos", type: :request do
  describe "GET /index" do
    before do
      sign_in create(:user)
    end
    it "returns http success" do
      get "/quartos/index"
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET /new" do
    before do
      sign_in create(:user)
    end
    it "returns http ok" do
      get "/quartos/new"
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET /edit" do
    before do
      sign_in create(:user)
    end
    it "returns http ok" do
      get "/quartos/edit"
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET /show" do
    before do
      sign_in create(:user)
    end
    it "returns http ok" do
      get "/quartos/show"
      expect(response).to have_http_status(:ok)
    end
  end

end
