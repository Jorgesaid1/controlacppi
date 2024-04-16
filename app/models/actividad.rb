class Actividad < ApplicationRecord
  has_many :empleados, dependent: :destroy
end
