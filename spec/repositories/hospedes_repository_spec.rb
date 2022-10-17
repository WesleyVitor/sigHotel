require 'rails_helper'

RSpec.describe 'HospedesRepository', type: :repository do
    context "method get_all_hospedes " do
        
        it "should return all hospedes" do
            FactoryBot.create_list(:hospede, 3)
            hospedes = HospedeRepository.get_all_hospedes
            expect(hospedes.count).to eq(3)
            expect(hospedes).to eq(Hospede.all)
        end
    end

    context "method get_hospede_by_cpf" do
        it "should return especific hospede" do
            hospede_created = FactoryBot.create(:hospede)
            hospede = HospedeRepository.get_hospede_by_id(hospede_created.id)
            expect(Hospede.last).to  eq(hospede)
        end

    end
    
    


end