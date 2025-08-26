class Photo < ApplicationRecord
  # Relación polimórfica
  belongs_to :imageable, polymorphic: true
end
