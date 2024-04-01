class CreateControls < ActiveRecord::Migration[7.1]
  def change
    create_table :controls do |t|
      t.string :comentarios
      t.integer :num_horas
      t.date :fecha_actividad
      t.integer :id_empleado
      t.integer :id_actividad

      t.timestamps
    end
  end
end
