FactoryBot.define do
  factory :hospede do
    nome { Faker::Name.name }
    sequence(:cpf) { |n| "123#{n}" }
    email { "MyString" }
    status { "MyString" }
    celular { Faker::PhoneNumber.cell_phone  }
    
    association :endereco_id, factory: :endereco 
  end
   
end
