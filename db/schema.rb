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

ActiveRecord::Schema[7.1].define(version: 2024_04_30_150826) do
  create_table "actividads", force: :cascade do |t|
    t.string "nombre_actividad"
    t.string "descripcion_actividad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "hechos", force: :cascade do |t|
    t.string "comentario"
    t.integer "empleados_id", null: false
    t.integer "actividads_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "homeoffice_id", null: false
    t.index ["actividads_id"], name: "index_hechos_on_actividads_id"
    t.index ["empleados_id"], name: "index_hechos_on_empleados_id"
    t.index ["homeoffice_id"], name: "index_hechos_on_homeoffice_id"
  end

  create_table "home_offices", force: :cascade do |t|
    t.date "fecha_homeoffice"
    t.integer "id_empleado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homeoffices", force: :cascade do |t|
    t.date "fecha_homeoffice"
    t.integer "empleado_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empleado_id"], name: "index_homeoffices_on_empleado_id"
  end

  create_table "movimientos", force: :cascade do |t|
    t.datetime "hora_entrada"
    t.datetime "hora_salida"
    t.date "fecha_registro"
    t.integer "empleado_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empleado_id"], name: "index_movimientos_on_empleado_id"
  end

  create_table "registrohos", force: :cascade do |t|
    t.datetime "hora_entrada"
    t.datetime "hora_salida"
    t.integer "homeoffice_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["homeoffice_id"], name: "index_registrohos_on_homeoffice_id"
  end

  create_table "registros", force: :cascade do |t|
    t.date "hora_entrada"
    t.date "hora_salida"
    t.date "fecha_registro"
    t.integer "id_empleado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "hechos", "actividads", column: "actividads_id"
  add_foreign_key "hechos", "empleados", column: "empleados_id"
  add_foreign_key "hechos", "homeoffices"
  add_foreign_key "homeoffices", "empleados"
  add_foreign_key "movimientos", "empleados"
  add_foreign_key "registrohos", "homeoffices"
end
