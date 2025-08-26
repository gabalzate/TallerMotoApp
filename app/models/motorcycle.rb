class Motorcycle < ApplicationRecord
  # Relación con Workshop: una moto pertenece a un solo taller
  belongs_to :workshop

  # Relación con Intervention: una moto puede tener muchas intervenciones
  has_many :interventions
end
