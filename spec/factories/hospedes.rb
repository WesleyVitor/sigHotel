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
    sequence(:cpf) do |n|
      if n > 9
        "123456789#{n}"
      else
        "1234567891#{n}"
      end
    end
    email { "#{nome}@gmail.com" }
    status {"active"}
    celular { Faker::PhoneNumber.cell_phone  }
    endereco

    
  end
  
   
end
