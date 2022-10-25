# == Schema Information
#
# Table name: enderecos
#
#  id          :integer          not null, primary key
#  rua         :string
#  numero      :string
#  complemento :string
#  bairro      :string
#  cidade      :string
#  estado      :string
#  pais        :string
#  cep         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  hospede_id  :integer
#
class Endereco < ApplicationRecord
    belongs_to :hospede,  optional: true
end
