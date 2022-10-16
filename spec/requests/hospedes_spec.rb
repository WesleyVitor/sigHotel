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
      endereco = FactoryBot.create(:endereco)
      hospede = FactoryBot.create(:hospede, endereco_id: endereco)
      get hospede_path(hospede.id)
      expect(response).to have_http_status(200)
    end
  end

end
