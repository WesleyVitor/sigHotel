require 'rails_helper'

RSpec.describe "HospedesShow", type: :request do  
  context "when exist hospede" do
    let(:hospede){FactoryBot.create(:hospede)}
    it " should return 200 status" do
      get hospede_path(hospede.id)
      expect(response).to have_http_status(200)
    end
  end

  context "when not exist hospede" do
    it "should return some status" do
      get hospede_path(1)
      expect(response).to have_http_status(200)
    end
  end
  
    
end
