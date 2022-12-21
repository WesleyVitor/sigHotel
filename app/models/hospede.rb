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
class Hospede < ApplicationRecord
    
    validates :nome, :celular, :email, presence: true
    validates :cpf, presence: true, uniqueness: true

    enum status: {active: "active", inactive: "inactive", reserve: "reserve"}

    has_one :endereco
    has_many :reserva
end
