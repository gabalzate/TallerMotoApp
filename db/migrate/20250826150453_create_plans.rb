class CreatePlans < ActiveRecord::Migration[8.0]
  def change
    create_table :plans do |t|
      t.string :plan_name
      t.decimal :plan_price
      t.string :plan_interval
      t.integer :max_workshops
      t.text :description

      t.timestamps
    end
  end
end
