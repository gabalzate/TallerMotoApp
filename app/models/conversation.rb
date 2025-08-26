class Conversation < ApplicationRecord
  # Relaciones con User: la conversación tiene un emisor y un receptor
  belongs_to :sender, class_name: 'User'
  belongs_to :recipient, class_name: 'User'

  # Relación con Message: una conversación tiene muchos mensajes
  has_many :messages
end
