class Registroho < ApplicationRecord
  belongs_to :homeoffice
  has_many :actividads, through: :hechos
end
