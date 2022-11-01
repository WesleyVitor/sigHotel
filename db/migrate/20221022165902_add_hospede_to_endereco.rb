class AddHospedeToEndereco < ActiveRecord::Migration[7.0]
  def change
    add_reference :enderecos, :hospede, null: true, foreign_key: true
  end
end
