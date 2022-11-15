require 'rails_helper'

RSpec.describe "HospedesIndex", type: :request do
  describe "when user do login" do
    let(:user) { create(:user) }
    before :each do
      sign_in user
    end
    it "return 200 status" do
      get hospedes_path
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'when user have not done login' do
    it "return 302 status" do
      get hospedes_path
      expect(response).to have_http_status(:found)
    end
  end
  

  

end
