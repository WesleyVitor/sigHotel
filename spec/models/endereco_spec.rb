# == Schema Information
#
# Table name: enderecos
#
#  id          :integer          not null, primary key
#  bairro      :string
#  cep         :string
#  cidade      :string
#  complemento :string
#  estado      :string
#  numero      :string
#  pais        :string
#  rua         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  hospede_id  :integer
#
# Indexes
#
#  index_enderecos_on_hospede_id  (hospede_id)
#
# Foreign Keys
#
#  hospede_id  (hospede_id => hospedes.id)
#
require 'rails_helper'

RSpec.describe Endereco, type: :model do
  context 'db' do
    context 'columns' do
      it{ should have_db_column(:rua).of_type(:string)}
      it{ should have_db_column(:numero).of_type(:string)}
      it{ should have_db_column(:complemento).of_type(:string)}
      it{ should have_db_column(:bairro).of_type(:string)}
      it{ should have_db_column(:cidade).of_type(:string)}
      it{ should have_db_column(:estado).of_type(:string)}
      it{ should have_db_column(:pais).of_type(:string)}
      it{ should have_db_column(:cep).of_type(:string)}
    end
  end
end
