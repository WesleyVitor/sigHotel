require 'rails_helper'

RSpec.describe Hospede, type: :model do
  context "db" do
    context 'columns' do
      it{ should have_db_column(:nome).of_type(:string)}
      it{ should have_db_column(:cpf).of_type(:string)}
      it{ should have_db_column(:celular).of_type(:string)}
      it{ should have_db_column(:email).of_type(:string)}
    end

    context "validations" do

      context "presence of" do
        it "nome" do
          hospede = FactoryBot.build(:hospede, nome:nil)
          expect(hospede).not_to be_valid 
        end
        it "cpf" do
          hospede = FactoryBot.build(:hospede, cpf:nil)
          expect(hospede).not_to be_valid 
        end
        it "celular" do
          hospede = FactoryBot.build(:hospede, celular:nil)
          expect(hospede).not_to be_valid 
        end
        it "email" do
          hospede = FactoryBot.build(:hospede, email:nil)
          expect(hospede).not_to be_valid 
        end
      end
      
      context "uniqueness of" do
        subject { FactoryBot.build(:hospede) } 
        it { should validate_uniqueness_of(:cpf) }
      end
      
    end
  end


  
end
