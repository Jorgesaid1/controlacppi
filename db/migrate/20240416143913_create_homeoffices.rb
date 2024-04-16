class CreateHomeoffices < ActiveRecord::Migration[7.1]
  def change
    create_table :homeoffices do |t|
      t.date :fecha_homeoffice
      t.integer :id_empleado

      t.timestamps
    end
  end
end
