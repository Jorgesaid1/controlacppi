class CreateHomeoffices < ActiveRecord::Migration[7.1]
  def change
    create_table :homeoffices do |t|
      t.date :fecha_homeoffice
      t.references :empleado, null: false, foreign_key: true

      t.timestamps
    end
  end
end
