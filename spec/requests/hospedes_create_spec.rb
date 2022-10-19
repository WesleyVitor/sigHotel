require 'rails_helper.rb'


RSpec.describe 'HospedesCreate', type: :request do

    context "with valid params" do
        it "should creating a new hospede with some attributes past" do
            attributes = FactoryBot.attributes_for(:hospede)
            post hospedes_path, params: {
                hospede: attributes
            }
            expect(Hospede.last).to have_attributes(attributes)
        end

    end
    

end