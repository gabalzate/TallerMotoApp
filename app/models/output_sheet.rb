class OutputSheet < ApplicationRecord
  # Relación con Intervention: una hoja de salida pertenece a una intervención
  belongs_to :intervention

  # Relación polimórfica con Photos: una hoja de salida puede tener muchas fotos
  has_many :photos, as: :imageable
end
