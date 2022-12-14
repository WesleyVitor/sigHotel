# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_21_122038) do
  create_table "enderecos", force: :cascade do |t|
    t.string "rua"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.string "pais"
    t.string "cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hospede_id"
    t.index ["hospede_id"], name: "index_enderecos_on_hospede_id"
  end

  create_table "hospedes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf", null: false
    t.string "email"
    t.string "status"
    t.string "celular"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quartos", force: :cascade do |t|
    t.string "numero_quarto", null: false
    t.integer "max_hospedes"
    t.text "descricao"
    t.integer "tipo_cama"
    t.integer "tipo_caracteristica"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservas", force: :cascade do |t|
    t.integer "quarto_id", null: false
    t.integer "hospede_id", null: false
    t.integer "status_pagamento", default: 0
    t.string "codigo_reserva", null: false
    t.datetime "data_hospedagem", null: false
    t.float "valor_pagamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hospede_id"], name: "index_reservas_on_hospede_id"
    t.index ["quarto_id"], name: "index_reservas_on_quarto_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username", default: ""
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "enderecos", "hospedes"
  add_foreign_key "reservas", "hospedes"
  add_foreign_key "reservas", "quartos"
end
