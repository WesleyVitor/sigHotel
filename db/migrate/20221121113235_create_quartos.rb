class CreateQuartos < ActiveRecord::Migration[7.0]
  def change
    create_table :quartos do |t|
      t.string :numero_quarto, null: false
      t.integer :max_hospedes
      t.text :descricao
      t.integer :tipo_cama
      t.integer :tipo_caracteristica
      t.integer :status

      t.timestamps
    end
  end
end
