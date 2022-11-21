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
    validates :numero_quarto, :max_hospedes, :status, :tipo_cama, :tipo_caracteristica, presence: true

    after_initialize :set_default, :if=> :new_record?

    enum status: {manutencao:0, reservado:1, ocupado: 2, pronto:3}
    enum tipo_cama: {single_room:0, twin_room:1, couple_room:2}
    enum tipo_caracteristica: {padrao:0, master:1, deluxe:2}

    def set_default
        self.status ||= :pronto
        self.tipo_caracteristica ||= :padrao
    end

    
end
