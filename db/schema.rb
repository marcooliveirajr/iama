# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160416000821) do

  create_table "anesthetists", force: :cascade do |t|
    t.string   "name"
    t.string   "rg"
    t.string   "cpf"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.integer  "address_number"
    t.string   "address_complement"
    t.string   "district"
    t.string   "city"
    t.string   "postal_code"
    t.string   "state"
    t.text     "note"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "bedrooms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health_insurances", force: :cascade do |t|
    t.string   "name"
    t.string   "kind"
    t.boolean  "status"
    t.integer  "version_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "health_insurances", ["version_id"], name: "index_health_insurances_on_version_id"

  create_table "health_terminologies", force: :cascade do |t|
    t.integer  "code_tuss",        limit: 8
    t.string   "description_tuss"
    t.integer  "measure"
    t.integer  "version_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "health_terminologies", ["version_id"], name: "index_health_terminologies_on_version_id"

  create_table "hospitals", force: :cascade do |t|
    t.string   "name"
    t.string   "kind"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maps", force: :cascade do |t|
    t.datetime "time_surgery"
    t.integer  "hospital_id"
    t.integer  "bedroom_id"
    t.integer  "patient_id"
    t.integer  "health_terminology_id"
    t.integer  "surgeon_id"
    t.integer  "anesthetist_id"
    t.integer  "health_insurance_id"
    t.integer  "receipt_id"
    t.text     "note"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "maps", ["anesthetist_id"], name: "index_maps_on_anesthetist_id"
  add_index "maps", ["bedroom_id"], name: "index_maps_on_bedroom_id"
  add_index "maps", ["health_insurance_id"], name: "index_maps_on_health_insurance_id"
  add_index "maps", ["health_terminology_id"], name: "index_maps_on_health_terminology_id"
  add_index "maps", ["hospital_id"], name: "index_maps_on_hospital_id"
  add_index "maps", ["patient_id"], name: "index_maps_on_patient_id"
  add_index "maps", ["receipt_id"], name: "index_maps_on_receipt_id"
  add_index "maps", ["surgeon_id"], name: "index_maps_on_surgeon_id"

  create_table "on_duties", force: :cascade do |t|
    t.datetime "on_duty_date"
    t.integer  "anesthetist_id"
    t.text     "note"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "on_duties", ["anesthetist_id"], name: "index_on_duties_on_anesthetist_id"

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "rg"
    t.string   "cpf"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.integer  "address_number"
    t.string   "address_complement"
    t.string   "district"
    t.string   "city"
    t.string   "postal_code"
    t.string   "state"
    t.text     "note"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "payment_maps", force: :cascade do |t|
    t.integer  "map_id"
    t.integer  "payment_id"
    t.datetime "payment_date"
    t.float    "payment_value"
    t.float    "paid_value"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "payment_maps", ["map_id"], name: "index_payment_maps_on_map_id"

  create_table "receipts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "size_surgeries", force: :cascade do |t|
    t.integer  "health_insurance_id"
    t.integer  "measure"
    t.float    "value_measure"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "size_surgeries", ["health_insurance_id"], name: "index_size_surgeries_on_health_insurance_id"

  create_table "surgeons", force: :cascade do |t|
    t.string   "name"
    t.string   "rg"
    t.string   "cpf"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.integer  "address_number"
    t.string   "address_complement"
    t.string   "district"
    t.string   "city"
    t.string   "postal_code"
    t.string   "state"
    t.text     "note"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role_id"
    t.integer  "failed_attempts",        default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["role_id"], name: "index_users_on_role_id"

  create_table "versions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
