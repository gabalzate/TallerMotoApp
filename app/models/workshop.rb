class Workshop < ApplicationRecord
  # Relación con User: un taller pertenece a un administrador (User)
  belongs_to :admin, class_name: 'User'

  # Relación con User: un taller tiene muchos mecánicos (User)
  has_many :mechanics, class_name: 'User'
  
  # Relación con Motorcycle: un taller tiene muchas motos
  has_many :motorcycles

  # Relación con Intervention: un taller tiene muchas intervenciones
  has_many :interventions

  # Relación con Services: un taller tiene muchos servicios
  has_many :services

end
