# == Schema Information
#
# Table name: reservas
#
#  id               :integer          not null, primary key
#  codigo_reserva   :string           not null
#  data_hospedagem  :datetime         not null
#  status_pagamento :integer          default("não_pago")
#  valor_pagamento  :float
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  hospede_id       :integer          not null
#  quarto_id        :integer          not null
#
# Indexes
#
#  index_reservas_on_hospede_id  (hospede_id)
#  index_reservas_on_quarto_id   (quarto_id)
#
# Foreign Keys
#
#  hospede_id  (hospede_id => hospedes.id)
#  quarto_id   (quarto_id => quartos.id)
#
class Reserva < ApplicationRecord
  belongs_to :quarto
  belongs_to :hospede

  after_initialize :set_code, :if=>:new_record?

  enum status_pagamento: [:nao_pago, :pago]

  def set_code
    self.codigo_reserva ||= rand(10**10)
    self.status_pagamento ||= 0# Gera um número aleatório de 10 dígitos
  end
end
