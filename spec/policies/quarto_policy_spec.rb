require 'rails_helper'

RSpec.describe QuartoPolicy, type: :policy do
    permissions :can_use_quarto? do
      context "staff" do
        let(:attributes) {attributes_for(:quarto)} 
        let(:user_with_authorization){build(:user, role: :admin)}
        it 'should permit to create action' do
          quarto = Quarto.new(attributes)
          expect(described_class).to permit(user_with_authorization, quarto)     
        end
        it 'should permit to new action' do
          quarto = Quarto.new
          expect(described_class).to permit(user_with_authorization, quarto)     
        end
      end
      context "not staff" do
        let(:attributes) {attributes_for(:quarto)} 
        let(:user_with_authorization){build(:user, role: :receptionist)}
        it 'should permit to create action' do
          quarto = Quarto.new(attributes)
          expect(described_class).not_to permit(user_with_authorization, quarto)     
        end
        it 'should permit to new action' do
          quarto = Quarto.new
          expect(described_class).not_to permit(user_with_authorization, quarto)     
        end
      end
      
      
  
  
    end
  

end
