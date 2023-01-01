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
require 'rails_helper'

RSpec.describe Reserva, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
