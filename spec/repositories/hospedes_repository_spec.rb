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
    
    


end