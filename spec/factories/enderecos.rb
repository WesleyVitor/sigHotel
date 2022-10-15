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
