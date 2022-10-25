# == Schema Information
#
# Table name: hospedes
#
#  id         :integer          not null, primary key
#  nome       :string
#  cpf        :string           not null
#  email      :string
#  status     :string
#  celular    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
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
