class CreateSubscriptions < ActiveRecord::Migration[8.0]
  def change
    create_table :subscriptions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :plan, null: false, foreign_key: true
      t.string :status
      t.datetime :start_date
      t.datetime :end_date
      t.string :payment_gateway_subscription_id

      t.timestamps
    end
  end
end
