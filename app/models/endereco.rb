class Endereco < ApplicationRecord
    belongs_to :hospede,  optional: true
end
