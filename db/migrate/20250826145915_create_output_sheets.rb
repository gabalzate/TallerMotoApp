class CreateOutputSheets < ActiveRecord::Migration[8.0]
  def change
    create_table :output_sheets do |t|
      t.integer :final_mileage
      t.text :final_gas_level
      t.text :final_oil_level
      t.text :final_state_notes
      t.text :activities_list
      t.references :intervention, null: false, foreign_key: true

      t.timestamps
    end
  end
end
