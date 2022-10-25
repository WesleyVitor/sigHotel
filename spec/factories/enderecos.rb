# == Schema Information
#
# Table name: enderecos
#
#  id          :integer          not null, primary key
#  rua         :string
#  numero      :string
#  complemento :string
#  bairro      :string
#  cidade      :string
#  estado      :string
#  pais        :string
#  cep         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  hospede_id  :integer
#
FactoryBot.define do
  factory :endereco do
    rua { Faker::Address.street_name }
    numero { Faker::Address.building_number }
    complemento { "A" }
    bairro { Faker::Address.community }
    cidade { Faker::Address.city }
    estado { Faker::Address.state }
    pais { Faker::Address.country }
    cep { Faker::Address.postcode }
  end
end
