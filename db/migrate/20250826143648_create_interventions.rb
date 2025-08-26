class CreateInterventions < ActiveRecord::Migration[8.0]
  def change
    create_table :interventions do |t|
      t.integer :status
      t.datetime :entry_date
      t.datetime :exit_date
      t.text :guarantee_disclaimer
      t.references :motorcycle, null: false, foreign_key: true
      t.references :workshop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
