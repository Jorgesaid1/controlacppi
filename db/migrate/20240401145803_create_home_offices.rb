class CreateHomeOffices < ActiveRecord::Migration[7.1]
  def change
    create_table :home_offices do |t|
      t.date :fecha_homeoffice
      t.integer :id_empleado

      t.timestamps
    end
  end
end
