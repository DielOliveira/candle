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

ActiveRecord::Schema.define(version: 20161024171202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arquivos", force: :cascade do |t|
    t.string   "nome"
    t.string   "caminho"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.integer  "usuariopregao_id"
    t.string   "descricao"
    t.datetime "horacomentario"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "comentarios", ["usuariopregao_id"], name: "index_comentarios_on_usuariopregao_id", using: :btree

  create_table "indicadordetalheusuarios", force: :cascade do |t|
    t.integer  "indicadorsetupdetalhe_id"
    t.integer  "indicadorsetup_id"
    t.string   "valor"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "indicadordetalheusuarios", ["indicadorsetup_id"], name: "index_indicadordetalheusuarios_on_indicadorsetup_id", using: :btree
  add_index "indicadordetalheusuarios", ["indicadorsetupdetalhe_id"], name: "index_indicadordetalheusuarios_on_indicadorsetupdetalhe_id", using: :btree

  create_table "indicadors", force: :cascade do |t|
    t.string   "indicador"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "indicadorsetupdetalhes", force: :cascade do |t|
    t.integer  "indicador_id"
    t.string   "descricao"
    t.string   "valordefault"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "indicadorsetupdetalhes", ["indicador_id"], name: "index_indicadorsetupdetalhes_on_indicador_id", using: :btree

  create_table "indicadorsetups", force: :cascade do |t|
    t.integer  "indicador_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "indicadorsetups", ["indicador_id"], name: "index_indicadorsetups_on_indicador_id", using: :btree

  create_table "planos", force: :cascade do |t|
    t.string   "descricao"
    t.integer  "diasvalidos"
    t.decimal  "valor"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pregaos", force: :cascade do |t|
    t.date     "data"
    t.boolean  "flagativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pregoestitulos", force: :cascade do |t|
    t.integer  "pregao_id"
    t.integer  "titulo_id"
    t.boolean  "flagativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pregoestitulos", ["pregao_id"], name: "index_pregoestitulos_on_pregao_id", using: :btree
  add_index "pregoestitulos", ["titulo_id"], name: "index_pregoestitulos_on_titulo_id", using: :btree

  create_table "pregoestitulosgraficos", force: :cascade do |t|
    t.integer  "pregoestitulo_id"
    t.integer  "arquivo_id"
    t.integer  "tempografico_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "pregoestitulosgraficos", ["arquivo_id"], name: "index_pregoestitulosgraficos_on_arquivo_id", using: :btree
  add_index "pregoestitulosgraficos", ["pregoestitulo_id"], name: "index_pregoestitulosgraficos_on_pregoestitulo_id", using: :btree
  add_index "pregoestitulosgraficos", ["tempografico_id"], name: "index_pregoestitulosgraficos_on_tempografico_id", using: :btree

  create_table "tempograficos", force: :cascade do |t|
    t.string   "tempo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "titulos", force: :cascade do |t|
    t.string   "codigo"
    t.decimal  "valortick"
    t.boolean  "flagativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trades", force: :cascade do |t|
    t.integer  "usuariopregao_id"
    t.datetime "horatrade"
    t.decimal  "volume"
    t.string   "operacao"
    t.decimal  "pontos"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "trades", ["usuariopregao_id"], name: "index_trades_on_usuariopregao_id", using: :btree

  create_table "usuariopregaos", force: :cascade do |t|
    t.string   "usuario"
    t.integer  "pregoestitulo_id"
    t.integer  "indicadorsetup_id"
    t.datetime "checkpoint"
    t.float    "resultado"
    t.boolean  "flagfinalizado"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "usuariopregaos", ["indicadorsetup_id"], name: "index_usuariopregaos_on_indicadorsetup_id", using: :btree
  add_index "usuariopregaos", ["pregoestitulo_id"], name: "index_usuariopregaos_on_pregoestitulo_id", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "email"
    t.string   "senha"
    t.string   "nomecompleto"
    t.date     "datascimento"
    t.datetime "ultimologin"
    t.boolean  "flagativo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "usuariosplanos", force: :cascade do |t|
    t.integer  "plano_id"
    t.integer  "usuario_id"
    t.date     "datapagamento"
    t.string   "linhacodigopagamento"
    t.string   "observacao"
    t.datetime "valid_at"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "usuariosplanos", ["plano_id"], name: "index_usuariosplanos_on_plano_id", using: :btree
  add_index "usuariosplanos", ["usuario_id"], name: "index_usuariosplanos_on_usuario_id", using: :btree

  add_foreign_key "comentarios", "usuariopregaos"
  add_foreign_key "indicadordetalheusuarios", "indicadorsetupdetalhes"
  add_foreign_key "indicadordetalheusuarios", "indicadorsetups"
  add_foreign_key "indicadorsetupdetalhes", "indicadors"
  add_foreign_key "indicadorsetups", "indicadors"
  add_foreign_key "pregoestitulos", "pregaos"
  add_foreign_key "pregoestitulos", "titulos"
  add_foreign_key "pregoestitulosgraficos", "arquivos"
  add_foreign_key "pregoestitulosgraficos", "pregoestitulos"
  add_foreign_key "pregoestitulosgraficos", "tempograficos"
  add_foreign_key "trades", "usuariopregaos"
  add_foreign_key "usuariopregaos", "indicadorsetups"
  add_foreign_key "usuariopregaos", "pregoestitulos"
  add_foreign_key "usuariosplanos", "planos"
  add_foreign_key "usuariosplanos", "usuarios"
end
