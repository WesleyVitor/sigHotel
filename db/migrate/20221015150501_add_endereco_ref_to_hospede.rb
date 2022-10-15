class AddEnderecoRefToHospede < ActiveRecord::Migration[7.0]
  def change
    add_reference :hospedes, :endereco, null: true, foreign_key: true
  end
end
