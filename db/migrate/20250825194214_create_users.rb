class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_email
      t.string :document_number
      t.string :phone_number
      t.string :password_digest
      t.integer :role

      t.timestamps
    end
  end
end
