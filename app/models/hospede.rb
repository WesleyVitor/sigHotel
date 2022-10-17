

class Hospede < ApplicationRecord
    
    validates :nome, :celular, :email, presence: true
    validates :cpf, presence: true, uniqueness: true
    has_one :endereco
end
