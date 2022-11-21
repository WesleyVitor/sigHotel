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
class Quarto < ApplicationRecord
    validates :numero_quarto, :max_hospedes, presence: true

    
end
