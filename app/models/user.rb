class User < ApplicationRecord
  # Relación con Workshop: un usuario puede ser administrador de muchos talleres
  has_many :workshops, foreign_key: :admin_id

  # Relación con Subscription: un usuario tiene muchas suscripciones
  has_many :subscriptions

  # Relación con ProcedureSheet: un usuario es el mecánico de muchas hojas de procedimiento
  has_many :procedure_sheets, foreign_key: :assigned_mechanic_id
  
  # Relación con chat: el usuario puede ser el emisor o el receptor de mensajes
  has_many :sent_conversations, class_name: 'Conversation', foreign_key: 'sender_id'
  has_many :received_conversations, class_name: 'Conversation', foreign_key: 'recipient_id'
  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'
  
end
