require 'rails_helper.rb'


RSpec.describe 'HospedesNew', type: :request do
    describe "when user is logged in" do
        let(:user) { create(:user) }
        before :each do
        sign_in user
        end
        it "should return status 200" do
            get new_hospede_path
            expect(response).to have_http_status(200)
        end
    end
end