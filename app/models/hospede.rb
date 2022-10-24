

class Hospede < ApplicationRecord
    
    validates :nome, :celular, :email, presence: true
    validates :cpf, presence: true, uniqueness: true

    enum status: {active: "active", inactive: "inactive", reserve: "reserve"}

    has_one :endereco
end
