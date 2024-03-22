class CreateEmpleados < ActiveRecord::Migration[7.1]
  def change
    create_table :empleados do |t|
      t.string :nombres
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :rfc_corto
      t.string :administracion
      t.string :curp
      t.integer :celular
      t.string :alergia
      t.string :ip_domicilio
      t.string :mac_adress
      t.integer :cp_domicilio
      t.string :tipo_sangre
      t.string :padecimiento
      t.string :medicamento
      t.integer :num_empleado

      t.timestamps
    end
  end
end
