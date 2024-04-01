class CreateActividads < ActiveRecord::Migration[7.1]
  def change
    create_table :actividads do |t|
      t.string :nombre_actividad
      t.string :descripcion_actividad

      t.timestamps
    end
  end
end
