require 'rails_helper'

RSpec.describe "Hospedes", type: :request do
  describe "GET /index" do
    it "return 200 status" do
      get hospedes_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /show" do
    it "return 200 status" do
      hospede = FactoryBot.create(:hospede)
      get hospede_path(hospede.id)
      expect(response).to have_http_status(200)
    end
  end

end
