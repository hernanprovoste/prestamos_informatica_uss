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

ActiveRecord::Schema.define(version: 20160705192304) do

  create_table "Usuarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "rut"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "correo_institucional"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "devoluciones", force: :cascade do |t|
    t.text     "descripcion"
    t.datetime "fechaDevolucion"
    t.integer  "prestamo_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "usuario_id"
  end

  add_index "devoluciones", ["prestamo_id"], name: "index_devoluciones_on_prestamo_id"
  add_index "devoluciones", ["usuario_id"], name: "index_devoluciones_on_usuario_id"

  create_table "entregas", force: :cascade do |t|
    t.text     "descripcion"
    t.datetime "fechaEntrega"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "prestamo_id"
    t.integer  "usuario_id"
  end

  add_index "entregas", ["prestamo_id"], name: "index_entregas_on_prestamo_id"
  add_index "entregas", ["usuario_id"], name: "index_entregas_on_usuario_id"

  create_table "equipos", force: :cascade do |t|
    t.string   "codUss"
    t.string   "modelo"
    t.string   "serial"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "tipo_id"
    t.integer  "marca_id"
  end

  add_index "equipos", ["marca_id"], name: "index_equipos_on_marca_id"
  add_index "equipos", ["tipo_id"], name: "index_equipos_on_tipo_id"

  create_table "marcas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prestamos", force: :cascade do |t|
    t.text     "descripcion"
    t.datetime "fechaPrestamo"
    t.string   "estado"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "cliente_id"
    t.integer  "equipo_id"
    t.integer  "usuario_id"
  end

  add_index "prestamos", ["cliente_id"], name: "index_prestamos_on_cliente_id"
  add_index "prestamos", ["equipo_id"], name: "index_prestamos_on_equipo_id"
  add_index "prestamos", ["usuario_id"], name: "index_prestamos_on_usuario_id"

  create_table "tipos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
