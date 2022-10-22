require 'rails_helper.rb'


RSpec.describe 'EnderecoCreate', type: :request do

    context "with valid params" do
        it "should creating a new endereco with some attributes past" do
            @hospede = FactoryBot.create(:hospede)
            endereco_attributes = FactoryBot.attributes_for(:endereco)
            post hospede_enderecos_path(@hospede.id), params: {
                endereco: endereco_attributes
            }
            @hospede.reload
            expect(Endereco.last).to have_attributes(endereco_attributes)
            expect(@hospede.endereco).to eq(Endereco.last)

            
        end

    end
    

end