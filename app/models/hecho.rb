class Hecho < ApplicationRecord
  belongs_to :empleados
  belongs_to :actividads
  belongs_to :home_offices
end
