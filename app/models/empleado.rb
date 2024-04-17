class Empleado < ApplicationRecord
  has_many :homeoffices, dependent: :destroy
  has_many :registros
  has_many :actividads, foreign_key: :id_actividad, class_name: "Control"
end
