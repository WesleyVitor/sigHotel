require 'rails_helper'

RSpec.describe "HospedesShow", type: :request do
  
  describe "GET /:id (hospedes)" do
    it "return 200 status" do
      
      hospede = FactoryBot.create(:hospede)
      get hospede_path(hospede.id)
      expect(response).to have_http_status(200)
      
    end
  end

end
