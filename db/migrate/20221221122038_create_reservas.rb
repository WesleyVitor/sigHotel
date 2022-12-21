class CreateReservas < ActiveRecord::Migration[7.0]
  def change
    create_table :reservas do |t|
      t.references :quarto, null: false, foreign_key: true
      t.references :hospede, null: false, foreign_key: true
      t.integer :status_pagamento, default: 0
      t.string :codigo_reserva, null: false
      t.datetime :data_hospedagem, null: false
      t.float :valor_pagamento

      t.timestamps
    end
  end
end
