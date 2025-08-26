# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_08_26_151015) do
  create_table "conversations", force: :cascade do |t|
    t.integer "sender_id", null: false
    t.integer "recipient_id", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id"], name: "index_conversations_on_recipient_id"
    t.index ["sender_id"], name: "index_conversations_on_sender_id"
  end

  create_table "entry_orders", force: :cascade do |t|
    t.text "problem_reported"
    t.text "gas_level"
    t.text "oil_level"
    t.integer "initial_mileage"
    t.boolean "chasis_ok"
    t.boolean "tire_state"
    t.boolean "headlight_state"
    t.boolean "turn_lights"
    t.boolean "brake_lights"
    t.boolean "transmission_chain"
    t.boolean "front_brake"
    t.boolean "back_brake"
    t.boolean "accelerator_cable"
    t.boolean "brake_cable"
    t.boolean "clutch_cable"
    t.boolean "battery_state"
    t.boolean "horn_state"
    t.boolean "starter_motor"
    t.boolean "idling_motor"
    t.boolean "acceleration_motor"
    t.text "initial_state_notes"
    t.integer "intervention_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["intervention_id"], name: "index_entry_orders_on_intervention_id"
  end

  create_table "interventions", force: :cascade do |t|
    t.integer "status"
    t.datetime "entry_date"
    t.datetime "exit_date"
    t.text "guarantee_disclaimer"
    t.integer "motorcycle_id", null: false
    t.integer "workshop_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["motorcycle_id"], name: "index_interventions_on_motorcycle_id"
    t.index ["workshop_id"], name: "index_interventions_on_workshop_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "conversation_id", null: false
    t.integer "sender_id", null: false
    t.text "body"
    t.boolean "read"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["sender_id"], name: "index_messages_on_sender_id"
  end

  create_table "motorcycles", force: :cascade do |t|
    t.string "plate_number"
    t.string "brand"
    t.string "model"
    t.integer "year"
    t.string "client_document_number"
    t.integer "workshop_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workshop_id"], name: "index_motorcycles_on_workshop_id"
  end

  create_table "output_sheets", force: :cascade do |t|
    t.integer "final_mileage"
    t.text "final_gas_level"
    t.text "final_oil_level"
    t.text "final_state_notes"
    t.text "activities_list"
    t.integer "intervention_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["intervention_id"], name: "index_output_sheets_on_intervention_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "image"
    t.integer "imageable_id"
    t.string "imageable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string "plan_name"
    t.decimal "plan_price"
    t.string "plan_interval"
    t.integer "max_workshops"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procedure_sheets", force: :cascade do |t|
    t.text "description"
    t.datetime "date"
    t.integer "assigned_mechanic_id", null: false
    t.integer "intervention_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assigned_mechanic_id"], name: "index_procedure_sheets_on_assigned_mechanic_id"
    t.index ["intervention_id"], name: "index_procedure_sheets_on_intervention_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name_service"
    t.text "description_service"
    t.decimal "amount_service"
    t.string "currency"
    t.integer "workshop_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workshop_id"], name: "index_services_on_workshop_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "plan_id", null: false
    t.string "status"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "payment_gateway_subscription_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_subscriptions_on_plan_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_email"
    t.string "document_number"
    t.string "phone_number"
    t.string "password_digest"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workshops", force: :cascade do |t|
    t.string "name_workshop"
    t.string "city"
    t.string "address"
    t.text "additional_details"
    t.string "phone_number"
    t.string "schedule"
    t.string "public_profile_link"
    t.string "status"
    t.integer "admin_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_workshops_on_admin_id"
  end

  add_foreign_key "conversations", "recipients"
  add_foreign_key "conversations", "senders"
  add_foreign_key "entry_orders", "interventions"
  add_foreign_key "interventions", "motorcycles"
  add_foreign_key "interventions", "workshops"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "senders"
  add_foreign_key "motorcycles", "workshops"
  add_foreign_key "output_sheets", "interventions"
  add_foreign_key "procedure_sheets", "assigned_mechanics"
  add_foreign_key "procedure_sheets", "interventions"
  add_foreign_key "services", "workshops"
  add_foreign_key "subscriptions", "plans"
  add_foreign_key "subscriptions", "users"
  add_foreign_key "workshops", "admins"
end
