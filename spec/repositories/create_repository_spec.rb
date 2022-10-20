require 'rails_helper.rb'

RSpec.describe 'HospedeCreate', type: :repository do
    context "valid params past" do
        it "should create a new hospede" do
            params = FactoryBot.attributes_for(:hospede)
            expect {
                HospedeRepository.create_hospede(params)
            }.to change(Hospede, :count).by(1)
        end
    end
end