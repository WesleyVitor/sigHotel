require 'rails_helper'

RSpec.describe "HospedesShow", type: :request do
  
  describe "GET /:id (hospedes)" do
    let(:hospede){FactoryBot.create(:hospede)}
    it " should return 200 status" do
      
      
      get hospede_path(hospede.id)
      expect(response).to have_http_status(200)
      
    end

    it "should include hospede created in body" do
      get hospede_path(hospede.id)
      expect(response.body).to include(hospede.nome) 
      expect(response.body).to include(hospede.email) 
      expect(response.body).to include(hospede.celular) 
      
    end
  end

end
