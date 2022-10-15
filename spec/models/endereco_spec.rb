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
