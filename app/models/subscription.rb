class Subscription < ApplicationRecord
  # Relación con User: una suscripción pertenece a un usuario
  belongs_to :user

  # Relación con Plan: una suscripción pertenece a un plan
  belongs_to :plan
end
