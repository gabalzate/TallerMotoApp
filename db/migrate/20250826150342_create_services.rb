class CreateServices < ActiveRecord::Migration[8.0]
  def change
    create_table :services do |t|
      t.string :name_service
      t.text :description_service
      t.decimal :amount_service
      t.string :currency
      t.references :workshop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
