class Message < ApplicationRecord
  # Relación con Conversation: un mensaje pertenece a una conversación
  belongs_to :conversation

  # Relación con User: un mensaje tiene un emisor
  belongs_to :sender, class_name: 'User'
end
