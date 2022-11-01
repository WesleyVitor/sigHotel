class CreateHospedes < ActiveRecord::Migration[7.0]
  def change
    create_table :hospedes do |t|
      t.string :nome
      t.string :cpf, null: false, unique: true
      t.string :email 
      t.string :status
      t.string :celular

      t.timestamps
    end
  end
end
