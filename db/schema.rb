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

ActiveRecord::Schema[7.1].define(version: 2024_04_01_144533) do
  create_table "controls", force: :cascade do |t|
    t.string "comentarios"
    t.integer "num_horas"
    t.date "fecha_actividad"
    t.integer "id_empleado"
    t.integer "id_actividad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empleados", force: :cascade do |t|
    t.string "nombres"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.string "rfc_corto"
    t.string "administracion"
    t.string "curp"
    t.integer "celular"
    t.string "alergia"
    t.string "ip_domicilio"
    t.string "mac_adress"
    t.integer "cp_domicilio"
    t.string "tipo_sangre"
    t.string "padecimiento"
    t.string "medicamento"
    t.integer "num_empleado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
