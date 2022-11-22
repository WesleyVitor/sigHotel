require 'rails_helper'

RSpec.describe 'QuartoCreate', type: :request do
    describe "when user is logged in" do
        let(:user) { create(:user, role: :admin) }
        before :each do
            sign_in user
        end
        context "when have valid params" do
            let(:attributes){ FactoryBot.attributes_for(:quarto)}
            before do
                post quartos_path, params: {
                    quarto: attributes
                }
            end
            it "should creating a new quarto with some attributes past" do
                expect(Quarto.last).to have_attributes(attributes)
            end
    
            it "should redirect to creating a new endereco" do
                expect(response).to have_http_status(:found)
                
            end
    
        end
    end
end