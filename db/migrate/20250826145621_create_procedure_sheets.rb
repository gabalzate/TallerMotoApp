class CreateProcedureSheets < ActiveRecord::Migration[8.0]
  def change
    create_table :procedure_sheets do |t|
      t.text :description
      t.datetime :date
      t.references :assigned_mechanic, null: false, foreign_key: true
      t.references :intervention, null: false, foreign_key: true

      t.timestamps
    end
  end
end
