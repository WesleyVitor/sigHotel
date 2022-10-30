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
