class Intervention < ApplicationRecord
  # Relación con Motorcycle: una intervención pertenece a una moto
  belongs_to :motorcycle

  # Relación con Workshop: una intervención se realiza en un taller
  belongs_to :workshop
  
  # Relaciones con las "hojas" de intervención
  has_one :entry_order
  has_many :procedure_sheets
  has_one :output_sheet
end
