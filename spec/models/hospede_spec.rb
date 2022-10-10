require 'rails_helper'

RSpec.describe Hospede, type: :model do
  context "db" do
    context 'columns' do
      it{ should have_db_column(:nome).of_type(:string)}
      it{ should have_db_column(:cpf).of_type(:string)}
      it{ should have_db_column(:celular).of_type(:string)}
      it{ should have_db_column(:email).of_type(:string)}
    end
  end
  
end
