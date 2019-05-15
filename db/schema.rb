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

ActiveRecord::Schema.define(version: 20190514030714) do

  create_table "alojamientos", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.float "precio", limit: 53
    t.string "descipcion"
    t.string "tipo"
    t.string "imagen"
    t.float "latitud", limit: 53
    t.float "longitud", limit: 53
    t.integer "cercania"
    t.boolean "wifi"
    t.boolean "bano_privado"
    t.boolean "alimentacion"
    t.boolean "parqueadero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "asistencia" because of following StandardError
#   Unknown type 'reference' for column 'user'

  create_table "eventos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.date "fecha"
    t.boolean "publico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "foros" because of following StandardError
#   Unknown type 'reference' for column 'alojamiento'

# Could not dump table "pagos" because of following StandardError
#   Unknown type 'reference' for column 'user'

  create_table "tiipos", force: :cascade do |t|
    t.string "nombre"
    t.integer "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "users" because of following StandardError
#   Unknown type 'reference' for column 'tiipo'

end
