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

ActiveRecord::Schema.define(version: 20160706182722) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alunos", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.integer  "curso_escola_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "ativo",           default: true
    t.string   "email"
  end

  add_index "alunos", ["curso_escola_id"], name: "index_alunos_on_curso_escola_id", using: :btree

  create_table "curso_escolas", force: :cascade do |t|
    t.integer  "escola_id"
    t.integer  "curso_id"
    t.integer  "professor_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "curso_escolas", ["curso_id"], name: "index_curso_escolas_on_curso_id", using: :btree
  add_index "curso_escolas", ["escola_id"], name: "index_curso_escolas_on_escola_id", using: :btree
  add_index "curso_escolas", ["professor_id"], name: "index_curso_escolas_on_professor_id", using: :btree

  create_table "cursos", force: :cascade do |t|
    t.string   "nome"
    t.integer  "carga_horaria"
    t.text     "descricao"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "escolas", force: :cascade do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.string   "endereco"
    t.string   "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professores", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alunos", "curso_escolas"
  add_foreign_key "curso_escolas", "cursos"
  add_foreign_key "curso_escolas", "escolas"
  add_foreign_key "curso_escolas", "professores"
end
