FactoryBot.define do
  factory :hospede do
    nome { Faker::Name.name }
    cpf { "MyString" }
    email { "MyString" }
    status { "MyString" }
    celular { Faker::PhoneNumber.cell_phone  }
    association :endereco_id, factory: :endereco
  end
end
