class CreateRegistrohos < ActiveRecord::Migration[7.1]
  def change
    create_table :registrohos do |t|
      t.datetime :hora_entrada
      t.datetime :hora_salida
      t.references :homeoffice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
