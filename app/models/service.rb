class Service < ApplicationRecord
  # Relación con Workshop: un servicio pertenece a un taller
  belongs_to :workshop
end
