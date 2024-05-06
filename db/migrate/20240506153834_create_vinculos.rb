class CreateVinculos < ActiveRecord::Migration[7.1]
  def change
    create_table :vinculos do |t|
      t.references :actividad, null: false, foreign_key: true
      t.references :registroho, null: false, foreign_key: true
      t.text :comentarios
      t.integer :num_horas

      t.timestamps
    end
  end
end
