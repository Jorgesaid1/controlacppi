class Actividad < ApplicationRecord
  has_many :registrohos, through: :hechos
end
