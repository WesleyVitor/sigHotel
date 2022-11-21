# == Schema Information
#
# Table name: quartos
#
#  id                  :integer          not null, primary key
#  descricao           :text
#  max_hospedes        :integer
#  numero_quarto       :string           not null
#  status              :integer
#  tipo_cama           :integer
#  tipo_caracteristica :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
require 'rails_helper'

RSpec.describe Quarto, type: :model do
  context "validates" do
    context "presence of" do
      it 'should return invalid to numero_quarto nil' do
        quarto = build(:quarto, numero_quarto:nil)
        expect(quarto).not_to be_valid  
      end
      it 'should return invalid to max_hospedes nil' do
        quarto = build(:quarto, max_hospedes:nil)
        expect(quarto).not_to be_valid  
      end
    end
    
  end
  
end
