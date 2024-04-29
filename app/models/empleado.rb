class Empleado < ApplicationRecord
  has_many :homeoffices, dependent: :destroy
  has_many :actividads, through: :hechos
  validates :nombres, :apellido_paterno, :apellido_materno, :rfc_corto, :administracion, :curp, :num_empleado, presence: true
  validates :nombres, :apellido_paterno, :apellido_materno, format: { with: /\A[a-zA-Z]+(?: [a-zA-Z]+)?+(?: [a-zA-Z]+)?+(?: [a-zA-Z]+)?\z/, message: "Solo recibe letras sin numeros" }
  validates :rfc_corto, :curp, :num_empleado, uniqueness: true
  validates :rfc_corto, length: { in: 8..8 }
  validates :curp, length: { is: 18 }
end
