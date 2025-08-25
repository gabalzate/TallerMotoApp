class CreateMotorcycles < ActiveRecord::Migration[8.0]
  def change
    create_table :motorcycles do |t|
      t.string :plate_number
      t.string :brand
      t.string :model
      t.integer :year
      t.string :client_document_number
      t.references :workshop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
