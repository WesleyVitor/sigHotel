require 'rails_helper'

RSpec.describe "HospedesIndex", type: :request do
  describe "GET / (hospedes)" do
    it "return 200 status" do
      get hospedes_path
      expect(response).to have_http_status(200)
    end
  end

  

end