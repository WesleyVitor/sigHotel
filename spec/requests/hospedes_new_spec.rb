require 'rails_helper.rb'


RSpec.describe 'HospedesNew', type: :request do

    it "should return status 200" do
        
        get new_hospede_path
        expect(response).to have_http_status(200)
    end
end