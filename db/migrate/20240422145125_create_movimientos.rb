class CreateMovimientos < ActiveRecord::Migration[7.1]
  def change
    create_table :movimientos do |t|
      t.datetime :hora_entrada
      t.datetime :hora_salida
      t.date :fecha_registro
      t.references :empleado, null: false, foreign_key: true

      t.timestamps
    end
  end
end
