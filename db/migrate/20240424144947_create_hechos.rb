class CreateHechos < ActiveRecord::Migration[7.1]
  def change
    create_table :hechos do |t|
      t.string :comentario
      t.references :empleados, null: false, foreign_key: true
      t.references :actividads, null: false, foreign_key: true

      t.timestamps
    end
  end
end
