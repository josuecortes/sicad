# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160825202552) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agendas", force: :cascade do |t|
    t.string   "data"
    t.string   "hora"
    t.string   "responsavel"
    t.string   "contato"
    t.string   "endereco"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "entidades", force: :cascade do |t|
    t.string   "nome"
    t.date     "data_criacao"
    t.string   "codigo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "imoveis", force: :cascade do |t|
    t.string   "tipo"
    t.string   "logradouro"
    t.string   "numero"
    t.string   "bairro"
    t.string   "cidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pessoas", force: :cascade do |t|
    t.string   "nome"
    t.date     "nascimento"
    t.string   "sexo"
    t.string   "rg"
    t.string   "cpf"
    t.string   "titulo"
    t.string   "zona"
    t.string   "secao"
    t.string   "logradouro"
    t.string   "numero"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "contato"
    t.string   "email"
    t.integer  "entidade_id"
    t.integer  "usuario_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",   null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "name"
    t.string   "cpf"
    t.integer  "superior_id"
    t.integer  "entidade_id"
    t.string   "tipo"
    t.boolean  "ativo",                  default: true
    t.boolean  "mudar_senha",            default: true
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "veiculos", force: :cascade do |t|
    t.string   "tipo"
    t.string   "placa"
    t.string   "proprietario"
    t.string   "contato"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
