class ProcedureSheet < ApplicationRecord
  # Relación con Intervention: una hoja de procedimientos pertenece a una intervención
  belongs_to :intervention

  # Relación con User: un procedimiento es realizado por un mecánico
  belongs_to :mechanic, class_name: 'User', foreign_key: 'assigned_mechanic_id'

  # Relación polimórfica con Photos: una hoja de procedimientos puede tener muchas fotos
  has_many :photos, as: :imageable
end
