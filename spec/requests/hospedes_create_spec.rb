require 'rails_helper.rb'


RSpec.describe 'HospedesCreate', type: :request do
    describe "when user is logged in" do
        let(:user) { create(:user) }
        before :each do
        sign_in user
        end
        context "when have valid params" do
            let(:attributes){ FactoryBot.attributes_for(:hospede)}
            before do
                post hospedes_path, params: {
                    hospede: attributes
                }
            end
            it "should creating a new hospede with some attributes past" do
                expect(Hospede.last).to have_attributes(attributes)
            end
    
            it "should redirect to creating a new endereco" do
                expect(response).to have_http_status(:found)
                expect(response).to redirect_to(new_hospede_endereco_path(Hospede.last))
            end
    
        end
    
        context "when have not valid params" do
            before do
                attributes = FactoryBot.attributes_for(:hospede, nome: nil)
                post hospedes_path, params:{
                    hospede: attributes
                }
            end
            it "should dont create a new hospede" do
                expect(Hospede.last).to be_nil
            end
    
            it "should return status Unprocessable Entity" do
                expect(response).to have_http_status(:unprocessable_entity)
            end
        end
        
    end
    
    
    

end