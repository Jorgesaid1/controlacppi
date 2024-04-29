class Actividad < ApplicationRecord
  has_many :empleados, through: :hechos
end
