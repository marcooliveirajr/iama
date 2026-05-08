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

ActiveRecord::Schema[7.2].define(version: 2026_05_07_015451) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "anesthetists", force: :cascade do |t|
    t.string "name"
    t.string "rg"
    t.string "cpf"
    t.string "phone"
    t.string "email"
    t.string "address"
    t.integer "address_number"
    t.string "address_complement"
    t.string "district"
    t.string "city"
    t.string "postal_code"
    t.string "state"
    t.text "note"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "registration"
    t.string "cellphone"
  end

  create_table "bedrooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "cash_movements", force: :cascade do |t|
    t.string "document"
    t.datetime "time_movement", precision: nil
    t.text "movement_note"
    t.float "movement_value"
    t.integer "input_id"
    t.integer "output_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["input_id"], name: "index_cash_movements_on_input_id"
    t.index ["output_id"], name: "index_cash_movements_on_output_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "input_type"
  end

  create_table "health_insurances", force: :cascade do |t|
    t.string "name"
    t.string "kind"
    t.boolean "status"
    t.integer "version_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["version_id"], name: "index_health_insurances_on_version_id"
  end

  create_table "health_plans", force: :cascade do |t|
    t.string "name"
    t.string "kind"
    t.boolean "status"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "health_terminologies", force: :cascade do |t|
    t.integer "code_tuss", limit: 8
    t.string "description_tuss"
    t.integer "measure"
    t.integer "version_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["version_id"], name: "index_health_terminologies_on_version_id"
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "name"
    t.string "kind"
    t.boolean "status"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "inputs", force: :cascade do |t|
    t.string "name"
    t.integer "category_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["category_id"], name: "index_inputs_on_category_id"
  end

  create_table "maps", force: :cascade do |t|
    t.datetime "time_surgery", precision: nil
    t.integer "hospital_id"
    t.integer "bedroom_id"
    t.integer "patient_id"
    t.integer "health_terminology_id"
    t.integer "surgeon_id"
    t.integer "anesthetist_id"
    t.integer "health_insurance_id"
    t.integer "receipt_id"
    t.integer "payment_method_id"
    t.integer "payment_recipient_id"
    t.text "note"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "tuss2"
    t.integer "tuss3"
    t.integer "tuss4"
    t.integer "tuss5"
    t.boolean "via_unique2"
    t.boolean "via_unique3"
    t.boolean "via_unique4"
    t.boolean "via_unique5"
    t.string "registration"
    t.datetime "start_time", precision: nil
    t.datetime "end_time", precision: nil
    t.string "password"
    t.string "plan"
    t.string "hospitalization"
    t.datetime "receipt_day", precision: nil
    t.float "receipt_value"
    t.text "receipt_note"
    t.integer "anesthetist1"
    t.integer "anesthetist2"
    t.integer "surgeon1"
    t.integer "surgeon2"
    t.integer "health_plan_id"
    t.text "free_text"
    t.text "payment_note"
    t.string "attachment_map_file_name"
    t.string "attachment_map_content_type"
    t.integer "attachment_map_file_size"
    t.datetime "attachment_map_updated_at", precision: nil
    t.string "attachment_receipt_file_name"
    t.string "attachment_receipt_content_type"
    t.integer "attachment_receipt_file_size"
    t.datetime "attachment_receipt_updated_at", precision: nil
    t.string "attachment_pay_file_name"
    t.string "attachment_pay_content_type"
    t.integer "attachment_pay_file_size"
    t.datetime "attachment_pay_updated_at", precision: nil
    t.index ["anesthetist_id"], name: "index_maps_on_anesthetist_id"
    t.index ["bedroom_id"], name: "index_maps_on_bedroom_id"
    t.index ["health_insurance_id"], name: "index_maps_on_health_insurance_id"
    t.index ["health_plan_id"], name: "index_maps_on_health_plan_id"
    t.index ["health_terminology_id"], name: "index_maps_on_health_terminology_id"
    t.index ["hospital_id"], name: "index_maps_on_hospital_id"
    t.index ["patient_id"], name: "index_maps_on_patient_id"
    t.index ["payment_method_id"], name: "index_maps_on_payment_method_id"
    t.index ["payment_recipient_id"], name: "index_maps_on_payment_recipient_id"
    t.index ["receipt_id"], name: "index_maps_on_receipt_id"
    t.index ["surgeon_id"], name: "index_maps_on_surgeon_id"
  end

  create_table "on_duties", force: :cascade do |t|
    t.datetime "on_duty_date", precision: nil
    t.integer "anesthetist_id"
    t.text "note"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "end_time", precision: nil
    t.index ["anesthetist_id"], name: "index_on_duties_on_anesthetist_id"
  end

  create_table "outputs", force: :cascade do |t|
    t.string "name"
    t.integer "category_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["category_id"], name: "index_outputs_on_category_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "rg"
    t.string "cpf"
    t.string "phone"
    t.string "email"
    t.string "address"
    t.integer "address_number"
    t.string "address_complement"
    t.string "district"
    t.string "city"
    t.string "postal_code"
    t.string "state"
    t.text "note"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "registration"
    t.string "cellphone"
    t.integer "age"
  end

  create_table "payment_maps", force: :cascade do |t|
    t.integer "map_id"
    t.integer "payment_id"
    t.datetime "payment_date", precision: nil
    t.float "payment_value"
    t.float "paid_value"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "pay_day", precision: nil
    t.string "recipient"
    t.index ["map_id"], name: "index_payment_maps_on_map_id"
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "payment_recipients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "receipts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "size_surgeries", force: :cascade do |t|
    t.integer "health_insurance_id"
    t.integer "measure"
    t.float "value_measure"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["health_insurance_id"], name: "index_size_surgeries_on_health_insurance_id"
  end

  create_table "surgeons", force: :cascade do |t|
    t.string "name"
    t.string "rg"
    t.string "cpf"
    t.string "phone"
    t.string "email"
    t.string "address"
    t.integer "address_number"
    t.string "address_complement"
    t.string "district"
    t.string "city"
    t.string "postal_code"
    t.string "state"
    t.text "note"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "registration"
    t.string "cellphone"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "name"
    t.integer "role_id"
    t.integer "failed_attempts", default: 0
    t.string "unlock_token"
    t.datetime "locked_at", precision: nil
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "versions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cash_movements", "inputs"
  add_foreign_key "cash_movements", "outputs"
  add_foreign_key "health_insurances", "versions"
  add_foreign_key "health_terminologies", "versions"
  add_foreign_key "inputs", "categories"
  add_foreign_key "maps", "anesthetists"
  add_foreign_key "maps", "bedrooms"
  add_foreign_key "maps", "health_insurances"
  add_foreign_key "maps", "health_plans"
  add_foreign_key "maps", "health_terminologies"
  add_foreign_key "maps", "hospitals"
  add_foreign_key "maps", "patients"
  add_foreign_key "maps", "payment_methods"
  add_foreign_key "maps", "payment_recipients"
  add_foreign_key "maps", "receipts"
  add_foreign_key "maps", "surgeons"
  add_foreign_key "on_duties", "anesthetists"
  add_foreign_key "outputs", "categories"
  add_foreign_key "payment_maps", "maps"
  add_foreign_key "size_surgeries", "health_insurances"
  add_foreign_key "users", "roles"
end
