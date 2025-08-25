class CreateWorkshops < ActiveRecord::Migration[8.0]
  def change
    create_table :workshops do |t|
      t.string :name_workshop
      t.string :city
      t.string :address
      t.text :additional_details
      t.string :phone_number
      t.string :schedule
      t.string :public_profile_link
      t.string :status
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
