class RemoveEnderecoFromHospede < ActiveRecord::Migration[7.0]
  def change
    remove_reference :hospedes, :endereco, null: false, foreign_key: true
  end
end
