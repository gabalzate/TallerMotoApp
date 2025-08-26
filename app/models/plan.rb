class Plan < ApplicationRecord
  # Relación con Subscription: un plan puede tener muchas suscripciones
  has_many :subscriptions
end
