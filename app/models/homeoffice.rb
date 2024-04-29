class Homeoffice < ApplicationRecord
  belongs_to :empleado
  validate :fecha_homeoffice_posterior
  has_many :registrohos
  has_many :hechos

  def fecha_homeoffice_posterior
    if fecha_homeoffice.present? && fecha_homeoffice < Date.today
      errors.add(:fecha_homeoffice, "No puede estar en el pasado")
    end
  end

end
