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
    context "invalid params past" do
        it "should not create a new hospede when not past nome attribute" do
            params = FactoryBot.attributes_for(:hospede, nome: nil)
            expect {
                HospedeRepository.create_hospede(params)
            }.to_not change(Hospede, :count)
        end
        it "should not create a new hospede when not past email attribute" do
            params = FactoryBot.attributes_for(:hospede, email: nil)
            expect {
                HospedeRepository.create_hospede(params)
            }.to_not change(Hospede, :count)
        end
        it "should not create a new hospede when not past celular attribute" do
            params = FactoryBot.attributes_for(:hospede, celular: nil)
            expect {
                HospedeRepository.create_hospede(params)
            }.to_not change(Hospede, :count)
        end
        it "should not create a new hospede when not past cpf attribute" do
            params = FactoryBot.attributes_for(:hospede, cpf: nil)
            expect {
                HospedeRepository.create_hospede(params)
            }.to_not change(Hospede, :count)
        end
    end


end