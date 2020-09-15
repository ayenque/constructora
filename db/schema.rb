# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.


ActiveRecord::Schema.define(version: 2020_09_14_013350) do

  create_table "alumnos", force: :cascade do |t|
    t.string "nombres"
    t.string "dni"
    t.string "email"
    t.integer "edad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cita", force: :cascade do |t|
    t.string "dni"
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.integer "telefono"
    t.date "fechacita"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end


  create_table "citations", force: :cascade do |t|
    t.string "dni"
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.string "telefono"
    t.date "fechacita"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "mensaje"
  end

  create_table "departamentos", force: :cascade do |t|
    t.integer "numdpto"
    t.integer "piso"
    t.text "descripcion"
    t.decimal "precio"
    t.integer "area"
    t.integer "numdormitorio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "proyecto_id"
  end

  create_table "proyectos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.string "foto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "avatar"
  end

end
