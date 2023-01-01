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
FactoryBot.define do
  factory :reserva do
    quarto { nil }
    hospede { nil }
    status_pagamento { 1 }
    codigo_reserva { "MyString" }
    data_hospedagem { "2022-12-21 09:20:39" }
    valor_pagamento { 1.5 }
  end
end
