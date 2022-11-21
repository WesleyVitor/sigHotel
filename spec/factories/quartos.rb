# == Schema Information
#
# Table name: quartos
#
#  id                  :integer          not null, primary key
#  descricao           :text
#  max_hospedes        :integer
#  numero_quarto       :string           not null
#  status              :integer
#  tipo_cama           :integer
#  tipo_caracteristica :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
FactoryBot.define do
  factory :quarto do
    
    sequence(:numero_quarto) {|n| "#{n}"}
    max_hospedes { [1,2].sample }
    descricao { "lorem lorem" }
    tipo_cama { 1 }
    tipo_caracteristica { 1 }
    status { 1 }
  end
end
