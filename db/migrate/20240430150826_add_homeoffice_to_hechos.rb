class AddHomeofficeToHechos < ActiveRecord::Migration[7.1]
  def change
    add_reference :hechos, :homeoffice, null: false, foreign_key: true
  end
end
