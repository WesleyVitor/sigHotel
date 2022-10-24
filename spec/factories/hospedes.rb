FactoryBot.define do
  factory :hospede do
    nome { Faker::Name.name }
    sequence(:cpf) { |n| "123#{n}" }
    email { "MyString" }
    status {"active"}
    celular { Faker::PhoneNumber.cell_phone  }
    endereco

    
  end
  
   
end
