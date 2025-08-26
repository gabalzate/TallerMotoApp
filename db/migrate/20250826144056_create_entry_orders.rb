class CreateEntryOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :entry_orders do |t|
      t.text :problem_reported
      t.text :gas_level
      t.text :oil_level
      t.integer :initial_mileage
      t.boolean :chasis_ok
      t.boolean :tire_state
      t.boolean :headlight_state
      t.boolean :turn_lights
      t.boolean :brake_lights
      t.boolean :transmission_chain
      t.boolean :front_brake
      t.boolean :back_brake
      t.boolean :accelerator_cable
      t.boolean :brake_cable
      t.boolean :clutch_cable
      t.boolean :battery_state
      t.boolean :horn_state
      t.boolean :starter_motor
      t.boolean :idling_motor
      t.boolean :acceleration_motor
      t.text :initial_state_notes
      t.references :intervention, null: false, foreign_key: true

      t.timestamps
    end
  end
end
