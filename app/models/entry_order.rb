class EntryOrder < ApplicationRecord
  # Relación con Intervention: una orden de entrada pertenece a una intervención
  belongs_to :intervention

  # Relación polimórfica con Photos: una orden de entrada puede tener muchas fotos
  has_many :photos, as: :imageable
end
