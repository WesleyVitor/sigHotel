require 'rails_helper'

RSpec.describe "HospedesShow", type: :request do  
  describe "when user is logged in" do
    let(:user) { create(:user) }
    before :each do
      sign_in user
    end
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

  describe 'when user have not done login' do
    context "when exist hospede" do
      let(:hospede){FactoryBot.create(:hospede)}
      it "return 302 status" do
        get hospede_path(hospede.id)
        expect(response).to have_http_status(:found)
    end
    end
  
    context "when not exist hospede" do
      it "return 302 status" do
        get hospede_path(1)
        expect(response).to have_http_status(:found)
      end
    end
    
  end
  
  
    
end
