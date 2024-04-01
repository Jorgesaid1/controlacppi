class CreateRegistros < ActiveRecord::Migration[7.1]
  def change
    create_table :registros do |t|
      t.date :hora_entrada
      t.date :hora_salida
      t.date :fecha_registro
      t.integer :id_empleado

      t.timestamps
    end
  end
end
